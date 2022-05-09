<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="tw.ting.utils.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource  driver="com.mysql.cj.jdbc.Driver" user="root" password="" url="jdbc:mysql://localhost/iii"/>
<c:if test="${!empty param.account }">
	<sql:update>
		INSERT INTO member (account,password,realname) VALUES(?,?,?)
		<sql:param>${param.account}</sql:param>
		<sql:param>${TingUtils.encPasswd(param.password)}</sql:param>
		<sql:param>${param.realname}</sql:param>
	</sql:update>
	<c:if test="${pageContext.request.method=='GET'} ">
	<c:if test="${empty param.account }">
		<c:redirect url="ting63.jsp"></c:redirect>
	</c:if>
	</c:if>
	<c:redirect url="ting63.jsp"></c:redirect>
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rong Ting Company</title>
</head>
<body>


<form method="POST">
		Account:<input type="text" name="account"><br>
		Password:<input type="password" name="password"><br>
		Realname:<input type="text" name="realname"><br>
		<input type="submit" value="新增">
</form>

</body>
</html>