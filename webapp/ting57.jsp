<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rong Ting Company</title>
</head>
<body>
<h1> Ting Company</h1>
<hr>
<!-- 用標籤處理例外 -->
<c:catch var="error">
<input type="number" name="n">
<input type="submit">
<%
	String num =request.getParameter("n");
	int n= Integer.parseInt(num);
	out.print(n);
%>
</c:catch>
<hr>
Hello,World<br>
${error}
<hr>
</body>
</html>