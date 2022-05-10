<%@page import="com.mysql.cj.jdbc.ha.ReplicationMySQLConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*登入後直接輸入網址*/
	if(!session.isNew()){
		if(session.getAttribute("member")!=null){
			response.sendRedirect("ting73.jsp");
		}else{
			session.invalidate();
		}
	}
	String error=request.getParameter("error");
	try{
		switch(error){
		case "1":out.print("帳號&密碼錯誤");break;
		case "2":out.print("密碼錯誤");break;
		case "3":out.print("帳號錯誤");break;
		}

	}catch(Exception e){
		
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rong Ting Company</title>
</head>
<body>
<form action="ting72.jsp" method="post">
	Account: <input name="account"><br>
	Password:<input name="password"><br>
	<input type="submit" value="login">
</form>
</body>
</html>