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
<div class="title">字條預覽</div>
<div class="outer">
<div class="left"><img src="images/face/face_0.gif" id="pface" /></div>
<div class="right">

<span class="wishman" id="pwishman">佳純</span>
<br />
<span id="pcontent">健康快樂,聰明伶俐健明伶俐健康快樂,聰聰明伶俐健明伶俐健康快明伶俐健康快樂快樂,聰明伶俐健明伶俐健康快樂,聰明伶俐健康快</span>

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
<input name="wishman" value="邱岳溢" />
<input name="wisher" value="123" />
<input name="action" value="scriptAdd" />
<input type="submit" />
</form>

</body>
</html>