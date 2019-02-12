<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
<link href="css/index.css" rel="stylesheet" />
<link href="css/script.css" rel="stylesheet" />
</head>
<body>
<div id="header">
<img src="images/banner.jpg" />
</div>
<form id="myform" name="myform" action="ScriptServlet" method="post">
<div id="navigation">
<ul>
<li><img src="images/home_ico.gif"></li>
<li><a href="ScriptServlet?action=scriptQuery">返回首頁</a></li>
<li>
請選擇查詢條件
<select id="f" name="f">
<option value="all">全部</option>
<option value="wishman">祝福對象</option>
<option value="wisher">祝福者</option>
<option value="content">字條內容</option>
</select>
</li>
<li>
關鍵字:
</li>
<li>
<input type="text" name="key" id="key" class="navigation_input" />
</li>
<li>
<input type="image" name="imageField" src="images/btn_search.gif" />
</li>
</ul>
</div>
</form>
<jsp:include page="scrollscript.jsp"></jsp:include>
<div id="main" style="padding-top: 5px;">
<table width="98%" border="0" cellpadding="0" cellspacing="0" align="center">
<tr>
<td align="center" bgcolor="#D9EE9F">字條編號</td>
<td align="center" bgcolor="#D9EE9F">祝福對象</td>
<td align="center" bgcolor="#D9EE9F">祝福者</td>
<td align="center" bgcolor="#D9EE9F">字條內容</td>
<td align="center" bgcolor="#D9EE9F">發送時間</td>
<td align="center" bgcolor="#D9EE9F">人氣</td>
</tr>
<c:forEach var="item" items="${scriptList}">
<tr>
<td bgcolor="#E8F3D1">${item.id}</td>
<td bgcolor="#E8F3D1">${item.wishman}</td>
<td bgcolor="#E8F3D1">${item.wisher}</td>
<td bgcolor="#E8F3D1">${item.content}</td>
<td bgcolor="#E8F3D1">${item.id}</td>
<td bgcolor="#E8F3D1">${item.id}</td>
</tr>
</c:forEach>
</table>
</div>
<jsp:include page="copyright.jsp"></jsp:include>
</body>
</html>