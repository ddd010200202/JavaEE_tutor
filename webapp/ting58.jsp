<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page  import="tw.ting.utils.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rong Ting Company</title>
</head>
<body>

<c:set var="score">${TingUtils.createScore()}</c:set>
Score = ${score}<br>
<!-- test用來測試裡面的東西是true false  結果會擺在var   **沒有else**-->
<c:if test="${score>=90}" var="iftfa" >A<br></c:if>
<c:if test="${score>=80}" var="iftfb">B<br></c:if>
<c:if test="${score>=70}" var="iftfc">C<br></c:if>
<c:if test="${score>=60}" var="iftfd">D<br></c:if>
<c:if test="${score<60 }" var="iftfe">E<br></c:if>
A=${ iftfa}<br>
B=${ iftfb}<br>
C=${ iftfc}<br>
D=${ iftfd}<br>
E=${ iftfe}<br>

<hr>
<c:choose>
	<c:when test="${score>=90}">A</c:when>
	<c:when test="${score>=80}">B</c:when>
	<c:when test="${score>=70}">C</c:when>
	<c:when test="${score>=60}">D</c:when>
	<c:otherwise>E</c:otherwise>
</c:choose>
</body>
</html>