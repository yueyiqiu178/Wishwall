<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
<style type="text/css">

.testrr{
	padding:0;
	margin:0;
	width:240px;
	height:210px;
	border: 1px solid red;
	background:url(images/bg/style0.gif) no-repeat; 
}

.yes{
	padding:0;
	margin:0;
	width:240px;
	height:210px;
	border: 1px solid red;
	background:url(images/bg/style0.gif) no-repeat; 
}

.top_each{
	margin: 5px 0 0 15px;;
	
}

.top_each img{
	float: right;
}

.top_content_each{
	margin: 10px 0 0 15px;;
	//border: 1px solid red;
}

.left_each{
	display: inline-block;
	height: 110px;
	width: 50px;
}

.right_each{
	display: inline-block;
	border: 1px solod blue;
	height: 110px;
	width: 150px;
	vertical-align: top;
	word-break: break-all;
	overflow:hidden
}

.middle_each{
	text-align: right;	
}

.bottomm_each{
	margin: 5px 0 0 13px;
}

p{

margin: 0;
padding: 0;

}

.Num img{
	float: right;
}

.Detail{
	height: 120px;
	word-wrap:break-word;
}

#movediv{
	position: absolute;
	width: 300px;
	height: 300px;
	background-color: blue;
	left: 100px;
	top: 100px;
}

</style>
<script type="text/javascript">

var target_obj="";

function down(obj,event){
	   var eventT = e(event); 	//獲得標準事件物件
	   var o = eventT.target; 	//獲得目前拖放的元素
	   ox = parseInt(o.offsetLeft); 	//拖放元素的x軸坐標
	   oy = parseInt(o.offsetTop); 	//拖放元素的y軸坐標
	   mx = eventT.mx; 	//按下鼠標指標的x軸坐標
	   my = eventT.my; 	//按下鼠標指標的y軸坐標
	   obj.onmousemove = move; 	//註冊鼠標移動事件處理函數
	   obj.onmouseup = stop; 	//註冊鬆開鼠標事件處理函數
}

function e(event){ 	//定義事件物件標準化函數
	   if( ! event){ 	//兼容IE瀏覽器
	      event = window.event;
	      event.target = event.srcElement;
	      event.layerX = event.offsetX;
	      event.layerY = event.offsetY;
	   }
	   event.mx = event.pageX || event.clientX + document.body.scrollLeft; 	//計算鼠標指標的x軸距離
	   event.my = event.pageY || event.clientY + document.body.scrollTop; 	//計算鼠標指標的y軸距離
	   
	   return event; 	//傳回標準化的事件物件
	}

function move(event){
	var eventT = e(event);
	var o = eventT.target;
	   o.style.left = ox + eventT.mx - mx  + "px";	//定義拖動元素的x軸距離
	   o.style.top = oy + eventT.my - my + "px";	//定義拖動元素的y軸距離
}

function stop(event){
	var eventT = e(event);
	var o = eventT.target;
	   ox = parseInt(o.offsetLeft); 	//記錄拖放元素的x軸坐標
	   oy = parseInt(o.offsetTop); 	//記錄拖放元素的y軸坐標
	   mx = eventT.mx ; 	//記錄鼠標指標的x軸坐標
	   my = eventT.my ; 	//記錄鼠標指標的y軸坐標
	   o = o.onmousemove = o.onmouseup = null; 	//釋放所有操作物件
}

</script>
</head>
<body>
<div class="testrr">
<p class="Num">字條編號:1&nbsp;&nbsp;人氣:<span id="hitvalue${item.id}">20</span><img alt="關閉" src="images/close.gif"></p>
<br/>
<p class="detail">
<img src="images/face/face_1.gif">
<span class="wishman">FFF</span>
<br/>
sdfsdfsdfsdf
</p>
<p class="wisher">Tom</p>
<p class="comment"><a href="#" onclick="holdout(${item.id})">[支持]</a></p>
<p class="Date">2013-12-25</p>
</div>

<div id="script${item.id}" class="StyleEach${item.color}" style="left:<RandNum:createRandom n="920" base="5"/>px;top:<RandNum:createRandom n="376" base="184"/>px">
<div class="top_each">
字條編號:1&nbsp;&nbsp;人氣:<span id="hitvalue${item.id}">20</span><img alt="關閉" src="images/close.gif">
</div>
<div class="top_content_each">
<div class="left_each">
<img src="images/face/face_1.gif">
</div>
<div class="right_each">

<span class="wishman_each">FFF</span>
<br/>
<span class="content_each">sdfsdfsdasdddddddddddddddfsdf</span>

</div>
</div>
<div class="middle_each">
<span class="wisher_each">Tom</span>
</div>
<div class="bottomm_each">
<span><a href="#" onclick="holdout(${item.id})">[支持]</a></span>
<span>2013-12-25</span>
</div>
</div>

<div style="width: 100px;height: 300px;border: 1px solid red;word-break: break-all;">
<p>sdf sdfdsfsdfsfsdfsdf</p>
</div>


<div id="movediv" onmousedown="down(this,event)">

</div>

</body>
</html>