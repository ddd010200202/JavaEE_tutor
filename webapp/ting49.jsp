<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- EL => Expression Language 表示式$+大括號 不能寫網頁會去處理  -->
<jsp:useBean id="member" class="tw.ting.utils.Member"></jsp:useBean>
<jsp:setProperty name="member" property="id" value="${param.id}" />
<jsp:setProperty name="member" property="account" value="${param.account }" />
<jsp:setProperty name="member" property="realname" value="${param.realname }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rong Ting Company</title>
</head>
<body>
	I am  ting49<br>
	id : <jsp:getProperty property="id" name="member"/><br />
	account : <jsp:getProperty property="account" name="member"/><br />
	realname : <jsp:getProperty property="realname" name="member"/>
	<hr />
	id : ${member.id }<br />
	account : ${member.account }<br />
	realname : ${member.realname }
	<hr />
</body>
</html>