<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int v1 =(int)(Math.random()*49+1);
	int v2 =(int)(Math.random()*49+1);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rong Ting Company</title>
</head>
<body>
<hr>
<!-- include標籤  param:參數-->
<jsp:include page="ting43.jsp">
	<jsp:param value="<%=v1 %>" name="key1"/>
	<jsp:param value="<%=v2 %>" name="key2"/>
</jsp:include>
<hr>
<!--<jsp:include page="ting43.jsp?key1=<%= v1 %>&key2=<%= v2 %>"></jsp:include> 不要這樣寫-->
<hr>
</body>
</html>