<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
<script type="text/javascript" src="js/AjaxRequest.js"></script>
<script type="text/javascript" src="js/add.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<script type="text/javascript">

</script>
<style type="text/css">
.preview{
border:1px solid yellow;
margin:0;
padding:0;
width:240px;
height:210px;
background:url(images/bg/style0.gif) no-repeat;
text-align: left;
//position: absolute;
}
.title{
border:1px solid blue;
width:240px;
margin:6px 0 0 50px;
padding:0;
}
.outer{
width:240px;
margin:15px 0 0 10px;
padding:0;

}
.left{
width:50px;
height:120px;
margin:0;
padding:0;

display: inline-block;
vertical-align: top;
}
.right{
width:150px;
height:120px;
margin:0 0 0 6px;
padding:0;
overflow:hidden;
display: inline-block;

}

.divb{
	margin: 8px 0 0 0;
}

</style>
</head>
<body>
<div id="preview" class="preview">
<div class="title">�r���w��</div>
<div class="outer">
<div class="left"><img src="images/face/face_0.gif" id="pface" /></div>
<div class="right">

<span class="wishman" id="pwishman">�ί�</span>
<br />
<span id="pcontent">���d�ּ�,�o���D�W�����D�W���d�ּ�,�o�o���D�W�����D�W���d�֩��D�W���d�ּּ֧�,�o���D�W�����D�W���d�ּ�,�o���D�W���d��</span>

</div>
</div>

<div align="right" class="divb">
<span class="wisher" id="pwisher">ssswwwwwwwww</span>
</div>

</div>

<div id="abc">
sdsds
</div>

<form action="script" method="post">
<input name="wishman" value="������" />
<input name="wisher" value="123" />
<input name="action" value="scriptAdd" />
<input type="submit" />
</form>

</body>
</html>