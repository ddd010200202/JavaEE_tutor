<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rong Ting Company</title>
</head>
<body>
<!-- 此Scope 為PageScope -->
<%
	int a=10;
%>
a = <%= a++ %> <!-- <% out.print(a++); %> 的簡寫-->
<br>
a = <%= a%> <!-- <% out.print(a); %> -->
</body>
</html>