<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int lottery = (int)(Math.random()*49+1);
	//pageScope=>requestScope=>sessionScope=>applicationScope
	//request.setAttribute("lottery", lottery); //int autoboxing=>Integer.parselInt; *****Attribute轉成物件存到"lottery"****
	
	//pageContext.setAttribute(arg0, arg1)  
	application.setAttribute("b", lottery);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rong Ting Company</title>
</head>
<body>
Lottery = <%=lottery %>
<hr>
<%@ include file="ting41.jsp" %>
</body>
</html>