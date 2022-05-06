<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rong Ting Company</title>
</head>
<body>

<%
	Calendar now =Calendar.getInstance();
	now.add(Calendar.DAY_OF_MONTH, -8);

	int yy =now.get(Calendar.YEAR);
	int mm =now.get(Calendar.MONTH)+1;
	int dd =now.get(Calendar.DAY_OF_MONTH);
	int hh =now.get(Calendar.HOUR_OF_DAY);
	int min =now.get(Calendar.MINUTE);
	int ss =now.get(Calendar.SECOND);

	out.print(yy+"-"+mm+"-"+dd+" "+hh+":"+min+":"+ss);
%>


</body>
</html>