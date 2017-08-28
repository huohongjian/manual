


window.onload = function(){


	var editNode = void 0;

	R('body').addEventListener('click', function(e){
		e = e || window.e;
		var currNode = e.target;
		
		// 点击空白处返回
		if (currNode.tagName==='PRE') {
			if(editNode && editNode.innerText==='') {
				removeElement(editNode);
			}
			return
		}
		// 如果点击编辑框则返回
		if (currNode.className==='zh') {
			return;
		}

		var	pareNode = getParentNode(currNode, {tagName:'SPAN'}, true);
			nextNode = pareNode.nextSibling,
			presNode = pareNode.previousSibling;



		var pareNodePadding = pareNode.innerHTML;
		alert(pareNodePadding)




		if (nextNode && nextNode.className === 'zh') {
			nextNode.focus();
		} else {
			var el = R.ce('div', {
				className: 'zh',
			});
			el.setAttribute('contenteditable', true);

		
			if(editNode && editNode.innerText==='') {
				removeElement(editNode);
			}


			insertAfter(el, pareNode);
			editNode = el;
			el.focus();
		}

		

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