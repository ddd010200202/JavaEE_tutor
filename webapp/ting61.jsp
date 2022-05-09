<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rong Ting Company</title>
</head>
<body>
<!-- 用標籤連結SQL -->
<sql:setDataSource  driver="com.mysql.cj.jdbc.Driver" user="root" password="" url="jdbc:mysql://localhost/iii"/>
<sql:update >
	INSERT INTO member (account,password,realname ) VALUES ('peter','123','彼得')
</sql:update>


</body>
</html>