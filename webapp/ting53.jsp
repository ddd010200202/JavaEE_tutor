<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="tw.ting.utils.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rong Ting Company</title>
</head>
<body>
0 = ${paramValues.x[0]}<br>
1 = ${paramValues.x[1]}<br>
2 = ${paramValues.x[2]}<br>
3 = ${paramValues.x[3]}<br>
4 = ${paramValues.x[4]}<br>
5 = ${paramValues.x[5]}<hr>
all =${TingUtils.foreach(paramValues.x)}<hr>
<h3>jsp上的表現:</h3>
Method: <%= request.getMethod() %><br>
IP: <%= request.getRemoteAddr() %><br>
ip: <%= request.getLocale() %><br>
lan:<%= request.getLocale().getDisplayLanguage() %>
<hr>
<h3>EL上的表現:</h3><!-- EL 把request放在pageContext底下 -->
Method: ${pageContext.request.method}<br>
IP: ${pageContext.request.remoteAddr}<br>
ip: ${pageContext.request.locale}<br>
lan:${pageContext.request.locale.displayLanguage}
<hr>
</body>
</html>
