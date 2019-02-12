<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="WEB-INF/createRndNum.tld" prefix="RandNum"%>
<jsp:useBean id="getcount" class="wall.yueyiqiu.dao.ScriptDAO" scope="session"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title><script type="text/javascript">
var iLayerMaxNum=<%=getcount.getCount()+100%>
</script>
<script type="text/javascript" src="js/AjaxRequest.js"></script>
<script type="text/javascript" src="js/add.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<link href="css/index.css" rel="stylesheet" />
<link href="css/script.css" rel="stylesheet" />
</head>
<body>
<div id="shadeDiv" style="display: none;"></div>
<jsp:include page="top.jsp"></jsp:include>
<jsp:include page="scrollscript.jsp"></jsp:include>
<div id="main">
<c:forEach items="${scriptList}" var="item">
<div id="script${item.id}" class="StyleEach${item.color}" style="left:<RandNum:createRandom n="920" base="5"/>px;top:<RandNum:createRandom n="376" base="184"/>px" ondblclick="show(${item.id},'shadeDiv')" onmousedown="down(this,event)">
<div class="top_each">
字條編號:${item.id}&nbsp;&nbsp;人氣:<span id="hitvalue${item.id}">${item.hits}</span><img alt="關閉" src="images/close.gif" onclick="myclose(${item.id});">
</div>
<div class="top_content_each">
<div class="left_each">
<img src="images/face/face_${item.face}.gif">
</div>
<div class="right_each">

<span class="wishman_each">${item.wishman}</span>
<br/>
<span class="content_each">${item.content}</span>

</div>
</div>
<div class="middle_each">
<span class="wisher_each">${item.wisher}</span>
</div>
<div class="bottomm_each">
<span><a href="#" onclick="holdout(${item.id})">[支持]</a></span>
<span>${item.sendtime}</span>
</div>
</div>
</c:forEach>
</div>
<div id="notClickDiv">

</div>
<div id="script_add">
<table width="100%" height="300px" cellpadding="0" cellspacing="0">
<tr>
<td width="15px" height="14px" background="images/scrip_add_leftTop.gif"></td>
<td height="14px" background="images/scrip_add_Top.gif"></td>
<td width="15px" background="images/scrip_add_rightTop.gif"></td>
</tr>
<tr>
<td height="272px" background="images/scrip_add_Left.gif"></td>
<td valign="top" bgcolor="#FFFFFF">
<form action="" name="ScriptForm">
<table width="100%" height="188px" cellpadding="0" cellspacing="0" border="1">
<tr>
<td width="16%" align="center">祝福對象:</td>
<td width="84%" align="left" colspan="3"><input type="text" name="wishman" onkeyup="InputInfo(this,'pwishman')" />*</td>
</tr>
<tr>
<td align="center">祝福者:</td>
<td align="left" colspan="3"><input type="text" name="wisher" onfocus="wishername(this)" value="匿名" onkeyup="InputInfo(this,'pwisher')" />*</td>
</tr>
<tr>
<td align="center">字條顏色:</td>
<td height="50px" align="left" colspan="3">
<span class="color0" onclick="ColorChoose('0')"></span>
<span class="color1" onclick="ColorChoose('1')"></span>
<span class="color2" onclick="ColorChoose('2')"></span>
<span class="color3" onclick="ColorChoose('3')"></span>
<span class="color4" onclick="ColorChoose('4')"></span>
<span class="color5" onclick="ColorChoose('5')"></span>
<span class="color6" onclick="ColorChoose('6')"></span>
<span class="color7" onclick="ColorChoose('7')"></span>
<input type="text" name="color" value="0" />
</td>
</tr>
<tr>
<td height="65px" rowspan="2" align="center">心情圖案:</td>
<td height="24px" colspan="3" align="left">
請選擇心情圖案類別:
<a href="#" onclick="javascript:changepic1();">愛之屋</a>
<a href="#" onclick="javascript:changepic2();">物之語</a>
</td>
</tr>
<tr>
<td colspan="4" align="left">
<div id="face_1" style="display: block;">
<c:forEach var="num" varStatus="id" step="1" begin="0" end="5">
<img  src="images/face/face_${num}.gif"  width="56px" height="56px" onclick="FaceChoose('${num}')" />
</c:forEach>
</div>
<div id="face_2" style="display: none;">
<c:forEach var="num" varStatus="id" step="1" begin="6" end="11">
<img  src="images/face/face_${num}.gif"  width="56px" height="56px" onclick="FaceChoose('${num}')" />
</c:forEach>
</div>
<input type="text" name="face" id="face" value="0" />
</td>
</tr>
<tr>
<td align="center">字條內容:</td>
<td align="left" colspan="3">
<textarea rows="4" cols="49" name="content" class="contentarea" onkeydown="CountStr(this,this.form.total,this.form.used,this.form.remain);" onkeyup=""></textarea>
</td>
</tr>
<tr>
<td align="center">字節:</td>
<td align="left" colspan="3">
最多可用<input class="noborder" type="text" name="total" disabled="disabled" value="200" />個文字&nbsp;&nbsp;&nbsp;&nbsp;
已用<input class="noborder" type="text" name="used" disabled="disabled" value="0" />個文字&nbsp;&nbsp;&nbsp;&nbsp;
剩餘可用<input class="noborder" type="text" name="remain" disabled="disabled" value="200" />個文字
</td>
</tr>
<tr>
<td align="center">驗證碼</td>
<td align="left" width="450px">
<div style="position: relative;">
<div id="showCheckCode" style="display: none;padding: 3px;" align="left">
<img  src="picturecheckcode?rand=123" id="createCheckCode" width="160px" height="45px" />
 <span style="color:#4400CC;text-decoration: underline; cursor: pointer;" onclick="getNewCheckCode('showCheckCode','checkcode');">看不清?點擊換一張</span>
<!--<a href="#" style="color: #4400CC;" onclick="getNewCheckCode('showCheckCode','checkcode');">看不清?點擊換一張</a> -->
</div>
</div>
</td>
<td width="40px">
<input type="text" name="checkcode" value="" onclick="showCheckCodeFun('showCheckCode','checkcode')" onblur="checkEnteredCheckCode(this.value);"/>
<input type="hidden" id="hResult" value="0" />
</td>
<td width="450px" valign="bottom" onclick="hideCheckCodeDiv()">
<img id="messageimg" src="images/tishi2.gif" width="16px" height="16px"  />
<div id="resultMessage" style="text-align: left;display: inline;">溫馨提示:點擊驗證碼輸入框,獲取驗證碼</div>
</td>
</tr>
<tr>
<td align="center"></td>
<td colspan="3">
<input type="button" class="btn" name="btn_submit" id="btn_submit" onclick="scriptSubmit();" value="保存"  />
<input type="button"  class="btn" value="關閉" onclick="close_window();" />
</td>
</tr>
</table>
</form>
</td>
<td background="images/scrip_add_Right.gif"></td>
</tr>
<tr>
<td height="14px" background="images/scrip_add_leftBottom.gif"></td>
<td height="14px" background="images/scrip_add_Bottom.gif"></td>
<td background="images/scrip_add_rightBottom.gif"></td>
</tr>
</table>
</div>
<div id="preview" class="preview">
<div class="title">字條預覽</div>
<div class="outer">
<div class="left"><img src="images/face/face_0.gif" id="pface" /></div>
<div class="right">

<span class="wishmanclass" id="pwishman"></span>
<br />
<span id="pcontent"></span>

</div>
</div>

<div align="right" class="divb">
<span class="wisher" id="pwisher"></span>
</div>

</div>

<jsp:include page="copyright.jsp"></jsp:include>
<input type="hidden" value="<%=getcount.getCount()%>" id="rsCount" />
</body>
</html>