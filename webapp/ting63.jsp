<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource  driver="com.mysql.cj.jdbc.Driver" user="root" password="" url="jdbc:mysql://localhost/iii"/>
<!-- 要砍要寫在 SELECT * FROM member之前-->
<c:if test="${!empty param.delete }">
	<sql:update var="rs">
		DELETE FROM member WHERE id = ${param.delete}
	</sql:update>
	
</c:if>
<sql:query var="rs">
	SELECT * FROM member
</sql:query>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rong Ting Company</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" `
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
        crossorigin="anonymous"></script>
</head>
<body>
<h1>吳榮庭大公司</h1>
<a href="ting64.jsp"><button type="button" class="btn  btn-secondary">新增</button></a>
<script>
	function delConfirm(account) {
		var isDel = confirm("isDelete:"+account +"?")
		return isDel;
	}
</script>
<table class="table" border="1" width="100%">
	<tr>
		<th>id.</th>
		<th>Account</th>
		<th>Realname</th>
		<th>Edit</th>
		<th>Delete</th>
	</tr>
	<c:forEach var="row" items="${rs.rows}" varStatus="status">
		<tr>
			<td>${ row.id}</td>
			<td>${row.account}</td>
			<td>${row.realname}</td>
			<td><a href="ting65.jsp?editid=${row.id}">Edit</a></td>
			<td><a href="?delete=${row.id}" onclick="return delConfirm('${row.account}')">del</a></td>
		</tr>	
	</c:forEach>

	
</table>

</body>
</html>