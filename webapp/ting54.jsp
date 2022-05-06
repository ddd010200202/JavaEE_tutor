<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String method =request.getMethod();  //request => 隱含物件實體
	ServletRequest sr = pageContext.getRequest();
	/*證明 HttpServletRequest 是否跟來自pageContext的getRequest 是一樣的物件實體*/
	if(sr instanceof HttpServletRequest)out.print("ok");
	if(sr == request){out.print("yes");}
	//page < request < session <application
	//頁面  要求  會話  應用軟體
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rong Ting Company</title>
</head>
<body>

</body>
</html>