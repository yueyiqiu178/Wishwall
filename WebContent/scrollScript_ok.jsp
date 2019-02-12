<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:forEach var="item" items="${scrollscript}">
[<span style="color::#990000; ">${item.wisher}</span>]¯¬ºÖ[<span style="color:#990000; ">${item.wishman}</span>]:
${item.content}<span style="color:#666666;">${item.sendtime}</span>
</c:forEach>

