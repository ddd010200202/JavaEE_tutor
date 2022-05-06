<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String account= request.getParameter("account");
	String method =request.getMethod();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rong Ting Company</title>
</head>
<body>
Welcome，<%= account %>
<hr>
<%= method %>
</body>
</html>