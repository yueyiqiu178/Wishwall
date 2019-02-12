<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@ page import="java.util.*"%>
<%
Random rand=new Random();
%>
<img src="picturecheckcode?rand=<%=rand.nextInt()%>" id="createCheckCode" width="160px" height="45px"/>
<span style="color:#4400CC;text-decoration: underline; cursor: pointer;" onclick="getNewCheckCode('showCheckCode','checkcode');">看不清?點擊換一張</span>