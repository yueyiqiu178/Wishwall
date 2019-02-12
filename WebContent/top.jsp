<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
<script type="text/javascript">

function searchscript(){

	var keyvalue=document.getElementById("keyID").value;
	
	if(keyvalue!=""){
			if(document.getElementById("script"+keyvalue)){
					show(keyvalue,'shadeDiv');
				}
			else{
					alert("你輸入的編號不存在");
					document.getElementById("keyID").value='';
					document.getElementById("keyID").focus();
				}
		}
	else{
			alert("請輸入編號");
			document.getElementById("keyID").focus();
		}
}

</script>
</head>
<body>
<div id="header" align="center">
<img src="images/banner.jpg" width="100%">
</div>
<div id="navigation">
<ul>
<li>請輸入字條編號:</li>
<li><input type="text" name="keyID" id="keyID" class="navigation_input"/></li>
<li><input type="image" src="images/btn_search.gif" onclick="searchscript();" /></li>
<li><img src="images/addScript_ico.gif"></li>
<li><a href="#" onclick="load_ScriptAddwindow()">貼字條</a></li>
<li><img src="images/listScript_ico.gif" /></li>
<li><a href="script?action=scriptList">字條列表</a></li>
</ul>
</div>
</body>
</html>