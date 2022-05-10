<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<sql:setDataSource  driver="com.mysql.cj.jdbc.Driver" user="root" password="" url="jdbc:mysql://localhost/iii"/>
<sql:query var="rs">
	SELECT*FROM member
</sql:query>

${ rs.rows[0].realname}


