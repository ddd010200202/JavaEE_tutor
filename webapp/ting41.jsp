<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	//Object obj = request.getAttribute("lottery");
 	//int a=(Integer)obj;
 	Object obj1 = application.getAttribute("b");
 	int b=(Integer)obj1;
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rong Ting Company</title>
</head>
<body>
Lottery = <%= b%><br>

<hr> 

</body>
</html>