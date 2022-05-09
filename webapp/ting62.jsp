<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource  driver="com.mysql.cj.jdbc.Driver" user="root" password="" url="jdbc:mysql://localhost/iii"/>
<sql:query var="rs1">
	SELECT * FROM foods 
</sql:query>

<c:set var="rpp" value="10"/>

<c:set var="pages" value="${rs1.rowCount%rpp==0?rs1.rowCount/rpp:(rs1.rowCount-(rs1.rowCount%rpp))/rpp+1}"/>

<c:set var="page" value="${param.page==null?1:param.page}"/>
<c:set var="start" value="${(page-1)*rpp}"/>
<c:set var="prev" value="${page==1?1:page-1}"/>
<c:set var="next" value="${page==pages?page:page+1}"/>

<sql:query var="rs">
	SELECT * FROM foods LIMIT ${start},${rpp}
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
<hr>
<a href="?page=${prev}"><button type="button" class="btn btn-primary">上頁</button></a>
|
<a href="?page=${next}"><button type="button" class="btn btn-primary">下頁</button></a>
<hr>
rows =${rs1.rowCount }
rpp =${rpp }<br>
pages=${pages}<br>
start=${start}<br>
prev=${prev}<br>
next=${next}<br>
<!-- rs裡的rows -->
<table class="table" border="1" width="100%">
	<tr>
		<th>id.</th>
		<th>count</th>
		<th>Name</th>
		<th>Address</th>
		<th>Tel.</th>
	</tr>
	
	<c:forEach var="row" items="${rs.rows}" varStatus="status">
		<tr>
			<td>${ row.id}</td>
			<td>${ status.count}</td>
			<td>${ row.name}</td>
			<td>${row.address}</td>
			<td>${ row.tel}</td>
			<td><img src="${ row.Picurl}" width="100px"></td>
		</tr>	
	</c:forEach>

	
</table>

</body>
</html>