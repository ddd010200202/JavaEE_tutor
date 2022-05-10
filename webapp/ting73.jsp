<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("member")==null){
		response.sendRedirect("ting71.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rong Ting Company</title>
</head>
<body>
Main Page
<hr />
Welcom,${member.realname}
<hr />
<a href="ting74.jsp">Page2</a>
<a href="Logout.jsp">Logout</a>
</body>
</html>