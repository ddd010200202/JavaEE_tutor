<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String x= request.getParameter("x");
	String y= request.getParameter("y");
	String v1= request.getParameter("k1");
	String v2= request.getParameter("k2");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rong Ting Company</title>
</head>
<body>
I am ting45<hr>
x=<%= x %><br>
y=<%= y %><br>
v1=<%= v1 %><br>
v2=<%= v2 %><br>
</body>
</html>