<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%

String checkcode=(String)request.getSession().getAttribute("randcheckcode");
String entercode=request.getParameter("entercode");

if(checkcode.equals(entercode))
	out.println("1");
else
	out.println("0");

%>