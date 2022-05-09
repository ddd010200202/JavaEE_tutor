<%@page import="tw.ting.utils.BCrypt"%>
<%@page import="java.util.Properties"%>
<%@page import="java.sql.*"%>
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
<c:catch var="error">
<%
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Properties prop =new Properties();
	prop.put("user","root");
	prop.put("password","");
	Connection conn= DriverManager.getConnection("jdbc:mysql://localhost/iii",prop);
	String sql ="INSERT INTO member (account,password,realname) VALUES (?,?,?)";
	PreparedStatement pstmt =conn.prepareStatement(sql);
	pstmt.setString(1, "Jhon");
	pstmt.setString(2,BCrypt.hashpw("123456", BCrypt.gensalt()));
	pstmt.setString(3, "john");
	pstmt.executeUpdate();
	
%>
</c:catch>
<c:if test="${error!=null}">${error}</c:if>
</body>
</html>