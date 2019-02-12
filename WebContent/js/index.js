function show(id,divname){
	
	var e="script"+id;
	document.getElementById(divname).style.display="block";
	document.getElementById(divname).style.zIndex=iLayerMaxNum;
	document.getElementById(divname).style.width=document.body.clientWidth;
	document.getElementById(divname).style.height=document.body.clientHeight;
	document.getElementById(e).style.zIndex=iLayerMaxNum+1;

}


var Layer='';
document.onmouseup=moveEnd;
document.onmousemove=moveStart;
var b;
var c;
function down(Object,event){
	Layer=Object.id;
	if(document.all){
		document.getElementById(Layer).setCapture();
		b=event.x-document.getElementById(Layer).style.pixelLeft;
		c=event.y-document.getElementById(Layer).style.pixelTop;
	}else if(window.captureEvents){
		window.captureEvents(Event.MOUSEMOVE|Event.MOUSEUP);
		b=event.layerX;
		c=event.layerY;
	}

		document.getElementById(Layer).style.zIndex=iLayerMaxNum;
		iLayerMaxNum=iLayerMaxNum+1;

}
function moveStart(){
	if(Layer!=''){
		if(document.all){
			document.getElementById(Layer).style.left=event.x-b;
			document.getElementById(Layer).style.top=event.y-c;
		}else if(window.captureEvents){
			document.getElementById(Layer).style.left=(d.clientX-b)+"px";
			document.getElementById(Layer).style.top=(d.clientY-c)+"px";
		}
	}
}
function moveEnd(){
	if(Layer!=''){
		if(document.all){
			document.getElementById(Layer).releaseCapture();
			Layer='';
		}else if(window.captureEvents){
			window.captureEvents(Event.MOUSEMOVE|Event.MOUSEUP);
			Layer='';
		}
	}
}

