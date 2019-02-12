<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
<script type="text/javascript">

//window.setInterval("getscrollscript()",1000);
window.onload=function(){

	getscrollscript();
	
};


function getscrollscript(){

	var loader=new net.AjaxRequest("script?action=scrollScript&nocache="+new Date().getTime(),deal_getscrollscript,onerror,"get");
	
}


function deal_getscrollscript(){

	
	document.getElementById("scrollscriptcontent").innerHTML=this.req.responseText;
	
}

</script>
</head>
<body>
<div id="scrollscript">
最新10筆字條:
<marquee direction="left" width="80%" height="30px" onmouseover="this.stop();" onmouseout="this.start();">
<span id="scrollscriptcontent">
正在獲取字條內容
</span>
</marquee>
</div>
</body>
</html>