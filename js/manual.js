


window.onload = function(){


	var editNode = void 0;

	R('body').addEventListener('click', function(e){
		var currNode = (e||window.e).target;
		// 点击空白处返回
		if (R.inArray(currNode.tagName, ['BODY', 'PRE'])) {
			if(editNode && editNode.innerText==='') {
				editNode.style.display = 'none';
				if(editNode.previousSibling.tagName==='BR'){
					editNode.previousSibling.style.display = 'none';
				}
			}
			return
		} else if (currNode.className==='zh') { // 如果点击编辑框则返回
			return;
		}


		var	currLine = getParentNode(currNode, {tagName:'SPAN'}, true);
//		var nextNode = pareNode.nextSibling,
//			presNode = pareNode.previousSibling;


		var lastNode = currLine.lastChild;

		if (lastNode && lastNode.className === 'zh') {

			editNode = lastNode;
			
		} else {

			//先清除以前的
			if(editNode && editNode.innerText==='') {
				editNode.style.display = 'none';
				if(editNode.previousSibling.tagName==='BR'){
		//			alert('d')
					editNode.previousSibling.style.display = 'none';
				}
			}

			var el = R.ce('span', {
				className: 'zh',
			});
			el.setAttribute('contenteditable', true);

		
			if(editNode && editNode.innerText==='') {
				removeElement(editNode);
			}

			currLine.appendChild(R.ce('br'));
			currLine.appendChild(el);
			editNode = el;

			// 缩进格式
			(/( +)/).test(currLine.innerHTML);
			var space = RegExp.$1.length;
			editNode.style.marginLeft = space*8 + 'px';

		}
		editNode.style.display = 'inline';
		if(editNode.previousSibling.tagName==='BR'){
			editNode.previousSibling.style.display = 'inline';
		}
		editNode.focus();
		

	});


}


function removeElement(_element){
	var _parentElement = _element.parentNode;
	if(_parentElement){
		_parentElement.removeChild(_element);
		return true; 
	}
	return false;
}



function insertAfter(newElement, targetElement){
	if(!targetElement) return false;





    var parent = targetElement.parentNode;  
    if (parent.lastChild == targetElement) {  
        // 如果最后的节点是目标元素，则直接添加。因为默认是最后  
        parent.appendChild(newElement);  
    } else {  
        parent.insertBefore(newElement, targetElement.nextSibling);  
        //如果不是，则插入在目标元素的下一个兄弟节点 的前面。也就是目标元素的后面  
    }  
} 




function getParentNode(node, paras, includeMe) {
	if (includeMe!=true) {
		node = node.parentNode;
	}

	var condition = true;
	for (var key in paras) {
		if (node[key]!=paras[key]) {
			condition = false;
			break;
		}
	}
	if (condition) {
		return node;
	}

	if (node.tagName==='HTML') {
		return null;
	}
	return getParentNode(node, paras, false);
}