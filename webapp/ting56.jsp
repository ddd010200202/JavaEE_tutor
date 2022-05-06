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

<c:set var="x" value="123"/>
<c:set var="x" value="456" scope="request"/>
x = ${x}<br>
page =${pageScope.x}<br>
request =${requestScope.x}<br>
session =${sessionScope.x}<br>
application =${applicationScope.x}<br>
<hr>
Hello, World<br>
<!-- 這邊會把特殊符號作轉的動作 &lt;br/&gt -->
<c:out value="Hello,Worid<br/>"/><br>
<!-- EL版本 -->
${"Hello, World<br>"}
<!-- 百分比版本 -->
<%="Hello, World<br>"%>
<hr>
<c:out value="${x}"/><br>
<c:out value="${param.y}" default="no value"/>
<hr>
<jsp:useBean id="member" class="tw.ting.utils.Member"></jsp:useBean>
<c:set target="${member}" property="account">ting</c:set>
<c:set target="${member}" property="id">123</c:set>
<c:set target="${member}" property="realname">吳榮庭</c:set>
${member.id}:${member.account}:${member.realname}<br>
${member}
<hr>
<c:remove var="member"/>
${member}<br>	
</body>
</html>