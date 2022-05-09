<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rong Ting Company</title>
</head>
<body>
<%
	String[] names= {"Ting" ,"Brad" ,"Amy" ,"Kevin"};
	pageContext.setAttribute("pnames", names);
	String color ="";
%>

<table border="1" width="100%">
	<tr>
		<td>index</td>
		<td>Name</td>
		<td>count</td>
		<td>first</td>
		<td>last</td>
	</tr>
	
	<c:forEach items="${pnames}"  var="name" varStatus="status">
	<c:if test="${status.index%2==0}">${color="yellow"}</c:if>
	<c:if test="${status.index%2==1}">${color="pink"}</c:if>
	${color}
	<tr bgcolor='${status.index%2==0?"yellow":"pink"}'>
		<td>${status.index}</td><td>${name}</td><td>${status.count}</td><td>${status.first}</td><td>${status.last}</td>
	</tr>
	</c:forEach>
	
</table>
</body>
</html>