/** name	: TroffEditor
 ** version	: 1.0.0
 ** date	: 2017-08-25
 ** author	: HuoHongJian
 ** download: git clone git@github.com/huohongjian/TroffEditor
 */


 (function(W){
	var D = W.document;
	var R =_= function(q,o){return _.isDom(q)?q:(o||D).querySelector(q)}
	_.all = function(q,o){return _.isDom(q)?q:(o||D).querySelectorAll(q)}
	_.id  = function(q,o){return _.isDom(q)?q:(o||D).getElementById(q)}
	_.each= function(x,f){if(_.isJSON(x)){for(var k in x)f(x[k],k,x)}else{for(var i=0,I=x.length;i<I;i++)f(x[i],i,x)}}
	_.ce  = function(t,j){
		var k,l,e=D.createElement(t);
		if(j){
			for(k in j){
				if(j[k]){
					if(k==='style'){for(l in j[k]){e[k][l]=j[k][l]}}
					else if(k==='innerHTML'){e[k]=j[k]}
					else{
			//			e[k]=j[k]
						e.setAttribute(k, j[k])
					}}}

		}return e;
	}
	_.isJSON  = function(o){return typeof(o)=="object"&&Object.prototype.toString.call(o).toLowerCase()=="[object object]"&& !o.length} 
	_.isDom   = function(o){return !!(o&&window&&o.nodeType)}
	_.isEmpty = function(s){return s==null || s==undefined || s=='' || s==0 || s==[] || s=={}}





function Selection(editor) {
    this.editor = editor;
    this._currentRange = null;
}
Selection.prototype = {
    constructor: Selection,

    // 获取 range 对象
    getRange: function getRange() {
        return this._currentRange;
    },

    // 保存选区
    saveRange: function saveRange(_range) {

        if (_range) {
            this._currentRange = _range;
            return;
        }

        // 获取当前的选区
        var selection = window.getSelection();
        if (selection.rangeCount === 0) {
            return;
        }
        var range = selection.getRangeAt(0);

        // 判断选区内容是否在编辑内容之内
        var containerElem = this.getSelectionContainerElem(range);
        if (!containerElem) {
            return;
        }

        var editor = this.editor;
        var $textElem = editor.$textElem;
        if ($textElem.isContain($containerElem)) {
            // 是编辑内容之内的
            this._currentRange = range;
        }

//        console.log(this._currentRange)
    },

    // 折叠选区
    collapseRange: function collapseRange(toStart) {
        if (toStart == null) {
            // 默认为 false
            toStart = false;
        }
        var range = this._currentRange;
        if (range) {
            range.collapse(toStart);
        }
    },

    // 选中区域的文字
    getSelectionText: function getSelectionText() {
        var range = this._currentRange;
        if (range) {
            return this._currentRange.toString();
        } else {
            return '';
        }
    },

    // 选区的 $Elem
    getSelectionContainerElem: function(range) {
        range = range || this._currentRange;
        if (range) {
            var elem = range.commonAncestorContainer;
            return elem.nodeType === 1 ? elem : elem.parentNode;
        }
    },
    // getSelectionStartElem: function getSelectionStartElem(range) {
    //     range = range || this._currentRange;
    //     var elem = void 0;
    //     if (range) {
    //         elem = range.startContainer;
    //         return $(elem.nodeType === 1 ? elem : elem.parentNode);
    //     }
    // },
    // getSelectionEndElem: function getSelectionEndElem(range) {
    //     range = range || this._currentRange;
    //     var elem = void 0;
    //     if (range) {
    //         elem = range.endContainer;
    //         return $(elem.nodeType === 1 ? elem : elem.parentNode);
    //     }
    // },

    // // 选区是否为空
    // isSelectionEmpty: function isSelectionEmpty() {
    //     var range = this._currentRange;
    //     if (range && range.startContainer) {
    //         if (range.startContainer === range.endContainer) {
    //             if (range.startOffset === range.endOffset) {
    //                 return true;
    //             }
    //         }
    //     }
    //     return false;
    // },

    // // 恢复选区
    // restoreSelection: function restoreSelection() {
    //     var selection = window.getSelection();
    //     selection.removeAllRanges();
    //     selection.addRange(this._currentRange);
    // },

    // // 创建一个空白（即 &#8203 字符）选区
    // createEmptyRange: function createEmptyRange() {
    //     var editor = this.editor;
    //     var range = this.getRange();
    //     var $elem = void 0;

    //     if (!range) {
    //         // 当前无 range
    //         return;
    //     }
    //     if (!this.isSelectionEmpty()) {
    //         // 当前选区必须没有内容才可以
    //         return;
    //     }

    //     try {
    //         // 目前只支持 webkit 内核
    //         if (UA.isWebkit()) {
    //             // 插入 &#8203
    //             editor.cmd.do('insertHTML', '&#8203;');
    //             // 修改 offset 位置
    //             range.setEnd(range.endContainer, range.endOffset + 1);
    //             // 存储
    //             this.saveRange(range);
    //         } else {
    //             $elem = $('<strong>&#8203;</strong>');
    //             editor.cmd.do('insertElem', $elem);
    //             this.createRangeByElem($elem, true);
    //         }
    //     } catch (ex) {
    //         // 部分情况下会报错，兼容一下
    //     }
    // },

    // // 根据 $Elem 设置选区
    // createRangeByElem: function createRangeByElem($elem, toStart, isContent) {
    //     // $elem - 经过封装的 elem
    //     // toStart - true 开始位置，false 结束位置
    //     // isContent - 是否选中Elem的内容
    //     if (!$elem.length) {
    //         return;
    //     }

    //     var elem = $elem[0];
    //     var range = document.createRange();

    //     if (isContent) {
    //         range.selectNodeContents(elem);
    //     } else {
    //         range.selectNode(elem);
    //     }

    //     if (typeof toStart === 'boolean') {
    //         range.collapse(toStart);
    //     }

    //     // 存储 range
    //     this.saveRange(range);
    // }
};





	
var editorIndex= 0;

function Editor(id, config){
	this.index = editorIndex++;
	this.container = R.id(id);
	this.config = Object.assign({}, CONFIG, config || {});
//	this.selection = new Selection(this);

	this.range = null;
	this.init(id, config);
}
Editor.prototype = {
	constructor: Editor,

	init: function(id, config){


		this.createEditor();
		this.createToolBar(this.config.buttons);

	},

	createEditor: function(){
		var content = this.container.innerHTML;
		this.container.innerHTML = '';
		this.container.className += ' troffeditor';

		var toolBar = R.ce('div', {
			class: 'te-toolbar',
			innerHTML: '预览'
		});
		var textarea = R.ce('div', {
			class: 'te-textarea',
			contenteditable: 'true',
			style: {
				height: this.config.height + 'px',
			},
			innerHTML: content || '<p><br></p>'
		});

		var statBar = R.ce('div', {
				class: 'te-statbar',
		});

		this.container.appendChild(toolBar);
		this.container.appendChild(textarea);
		this.container.appendChild(statBar);

		var _this = this;

		toolBar.addEventListener('click', function(e){
			var t = (e||window.e).target;
			if(t.tagName === 'I'){
				// var btnkey = t.getAttribute('name'),
				// 	button = BUTTONS[btnkey];
				// if(button.click)
				// 	button.click(_this);

				var temp = R.ce("b", {
	            	style: {
	            		color:'red',
	            	}
	            });


//	            _this.range.surroundContents(temp);
				var range = _this.range;
				



			}
		}, false);


		

		textarea.addEventListener('mouseup', function(e){
			if (!window.getSelection) {
				alert("Please update your browser which doesn't support this feature." );
				return;
			}
			// 获取当前的选区
	        var selection = window.getSelection();
	        if (selection.rangeCount === 0) {
	            return;
	        }
	        _this.range = selection.getRangeAt(0);
		})


	},


	createToolBar: function(btns){
		var html = '<span class="leftBtns">';
		for(var i=0; i<btns.length; i++){
			var btnkey = btns[i],
				button = BUTTONS[btnkey];
		//	html += '<a href="javascript:void(0)" class="te-btn" name="' + name + '" title="' + button.text + '">' + button.text + '</a>'
			html += '<i name="'+btnkey+'" class="fa fa-'+button.icon+'" title="'+button.text+'"></i>';
		}

		
		this.container.children[0].innerHTML = html;
	},



};


var CONFIG = {
	height: 150,
	buttons: ['save', 'bold', 'italic'],
};


var BUTTONS = {
	save : {
		text: '保存',
		icon: 'save',
		click: function(editor){
//			editor.range.deleteContents();
 //           editor.range.insertNode($(html)[0]);
 			var value = "<b>hhj</b>";
 			document.execCommand('insertHTML', false, value)
		}
	},

	bold: {
		text: '粗体',
		icon: 'bold',
		click: function(){
			console.log('bold button click')
		},
	},

	italic: {
		text: '斜体',
		icon: 'italic',
		click: function(){
			console.log('italic button click')
		},
	},
	underline: {text: '下划线', click: null},
	strikethrough: {text: '删除线', click: null},
	
	fontsize: {
		text: '文字大小',
		click: function($, sender){
			alert('fontsize');
		}
	},

	fontname: {
		text: '字体',
		click: function($, sender){
			alert('fontname');
		}
	},

	forecolor: {
		text: '文本颜色',
		click: function($, sender){
			alert('color')
		}
	},

	

};

W.TroffEditor = Editor;

})(window)










if (typeof Object.assign != 'function') {
  Object.assign = function(target) {
    'use strict';
    if (target == null) {
      throw new TypeError('Cannot convert undefined or null to object');
    }

    target = Object(target);
    for (var index = 1; index < arguments.length; index++) {
      var source = arguments[index];
      if (source != null) {
        for (var key in source) {
          if (Object.prototype.hasOwnProperty.call(source, key)) {
            target[key] = source[key];
          }
        }
      }
    }
    return target;
  };
}
