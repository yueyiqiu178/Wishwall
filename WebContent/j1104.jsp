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
	   var eventT = e(event); 	//��o�зǨƥ󪫥�
	   var o = eventT.target; 	//��o�ثe��񪺤���
	   ox = parseInt(o.offsetLeft); 	//��񤸯���x�b����
	   oy = parseInt(o.offsetTop); 	//��񤸯���y�b����
	   mx = eventT.mx; 	//���U���Ы��Ъ�x�b����
	   my = eventT.my; 	//���U���Ы��Ъ�y�b����
	   obj.onmousemove = move; 	//���U���в��ʨƥ�B�z���
	   obj.onmouseup = stop; 	//���U�P�}���Шƥ�B�z���
}

function e(event){ 	//�w�q�ƥ󪫥�зǤƨ��
	   if( ! event){ 	//�ݮeIE�s����
	      event = window.event;
	      event.target = event.srcElement;
	      event.layerX = event.offsetX;
	      event.layerY = event.offsetY;
	   }
	   event.mx = event.pageX || event.clientX + document.body.scrollLeft; 	//�p�⹫�Ы��Ъ�x�b�Z��
	   event.my = event.pageY || event.clientY + document.body.scrollTop; 	//�p�⹫�Ы��Ъ�y�b�Z��
	   
	   return event; 	//�Ǧ^�зǤƪ��ƥ󪫥�
	}

function move(event){
	var eventT = e(event);
	var o = eventT.target;
	   o.style.left = ox + eventT.mx - mx  + "px";	//�w�q��ʤ�����x�b�Z��
	   o.style.top = oy + eventT.my - my + "px";	//�w�q��ʤ�����y�b�Z��
}

function stop(event){
	var eventT = e(event);
	var o = eventT.target;
	   ox = parseInt(o.offsetLeft); 	//�O����񤸯���x�b����
	   oy = parseInt(o.offsetTop); 	//�O����񤸯���y�b����
	   mx = eventT.mx ; 	//�O�����Ы��Ъ�x�b����
	   my = eventT.my ; 	//�O�����Ы��Ъ�y�b����
	   o = o.onmousemove = o.onmouseup = null; 	//����Ҧ��ާ@����
}

</script>
</head>
<body>
<div class="testrr">
<p class="Num">�r���s��:1&nbsp;&nbsp;�H��:<span id="hitvalue${item.id}">20</span><img alt="����" src="images/close.gif"></p>
<br/>
<p class="detail">
<img src="images/face/face_1.gif">
<span class="wishman">FFF</span>
<br/>
sdfsdfsdfsdf
</p>
<p class="wisher">Tom</p>
<p class="comment"><a href="#" onclick="holdout(${item.id})">[���]</a></p>
<p class="Date">2013-12-25</p>
</div>

<div id="script${item.id}" class="StyleEach${item.color}" style="left:<RandNum:createRandom n="920" base="5"/>px;top:<RandNum:createRandom n="376" base="184"/>px">
<div class="top_each">
�r���s��:1&nbsp;&nbsp;�H��:<span id="hitvalue${item.id}">20</span><img alt="����" src="images/close.gif">
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
<span><a href="#" onclick="holdout(${item.id})">[���]</a></span>
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