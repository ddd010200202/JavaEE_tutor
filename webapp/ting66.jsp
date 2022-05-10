<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource  driver="com.mysql.cj.jdbc.Driver" user="root" password="" url="jdbc:mysql://localhost/iii"/>


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
<!-- sql交易機制 i錯誤就會被退回-->
<c:catch>
<sql:transaction>
	<sql:update>
		INSERT INTO member(account,password,realname) VALUES(?,?,?)
		<sql:param>testAAa</sql:param>
		<sql:param>testBBb</sql:param>
		<sql:param>testCCc</sql:param>
	</sql:update>
	<sql:query var="lastid">
		SELECT last_insert_id() as newid 
	</sql:query>
	<sql:update>
		UPDATE member SET password=? WHERE i=?
		<sql:param>123456</sql:param>
		<sql:param>444</sql:param>
	</sql:update>
	${lastid.rows[0].newid}
</sql:transaction>
</c:catch>
</body>
</html>