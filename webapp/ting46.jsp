<%@page import="tw.ting.utils.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" class="tw.ting.utils.Member"></jsp:useBean>
<jsp:setProperty name="member" property="id" value="1" />
<jsp:setProperty name="member" property="account" value="ting" />
<jsp:setProperty name="member" property="realname" value="Ting" />
<!-- 從Member類別取得物件實體並命名物件實體為member -->
<%
Member member2 = new Member();
member2.setId(2);
member2.setAccount("tony");
member2.setRealname("Tony");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rong Ting Company</title>
</head>
<body>
id : <jsp:getProperty property="id" name="member"/><br />
account : <jsp:getProperty property="account" name="member"/><br />
realname : <jsp:getProperty property="realname" name="member"/><br />

<hr />
id : <%= member2.getId() %><br />
account : <%= member2.getAccount() %><br />
realname : <%= member2.getRealname() %><br />

<hr />
id : <%= member.getId() %><br />
account : <%= member.getAccount() %><br />
realname : <%= member.getRealname() %><br />
</body>
</html>