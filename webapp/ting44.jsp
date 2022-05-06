<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	int v1 =(int)(Math.random()*49+1);
	int v2 =(int)(Math.random()*49+1);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rong Ting Company</title>
</head>
<body>
I am ting44
<hr><!-- 沒事不能空格或換行會拋出例外/jsp後面不能放註解 -->

<jsp:forward page="ting45.jsp">
	<jsp:param value="<%=v1 %>" name="k1"/>
	<jsp:param value="<%=v2 %>" name="k2"/>
</jsp:forward>
<hr>
</body>
</html>