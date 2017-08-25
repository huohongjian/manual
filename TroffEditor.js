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









	
var editorIndex= 0;

function Editor(id, config){
	this.index = editorIndex;
	this.container = R.id(id);
	this.config = CONFIG;

	this.init(id, config);
}
Editor.prototype = {
	constructor: Editor,

	init: function(id, config){
		editorIndex++;

		if(config){
			for(var k in config){
				this.config[k] = config[k];
			}
		}
		this._createElements();

	},

	_createElements: function(){
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
				height: 200 + 'px',
			},
			innerHTML: content || '<p><br></p>'
		});

		var statBar = R.ce('div', {
				class: 'te-statbar',
		});

		this.container.appendChild(toolBar);
		this.container.appendChild(textarea);
		this.container.appendChild(statBar);


		this.recreateToolBar(this.config.buttons);
	
	},


	recreateToolBar: function(btns){
		var html = '<span class="leftBtns">';
		for(var i=0; i<btns.length; i++){
			var name = btns[i],
					button = BUTTONS[name];
			html += '<a href="javascript:void(0)" class="te-btn" name="' + name + '" title="' + button.text + '">' + button.text + '</a>'
		}

		
		this.container.children[0].innerHTML = html;
	},



};


var CONFIG = {
	buttons: ['bold', 'italic', 'underline', 'strikethrough'],
};


var BUTTONS = {
	save : {
		text: '保存',
		click: function($, sender){
			alert('save')
		}
	},
	
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

	bold: {text: '粗体', click:null},
	italic: { text: '斜体', click: null},
	underline: {text: '下划线', click: null},
	strikethrough: {text: '删除线', click: null},

};

W.TroffEditor = Editor;

})(window)




