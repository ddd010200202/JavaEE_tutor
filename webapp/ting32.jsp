<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rong Ting Company</title>
</head>
<body>
Hello,World<br>

<%
	// pageScope=>requestScope=>sessionScope=>applicationScope
	//Scope 為這個變數或方法物件能夠在哪裡讀取最小單位為pageScope
	int lottery =(int)(Math.random()*49+1);
	out.print("I am JSP."+lottery);//在jsp內out 為隱含物件不用new先天存在 
%>


</body>
</html>