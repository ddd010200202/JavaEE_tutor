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
<!-- EL 把演算法方法交給EL-->
<form action="ting51.jsp">
	<input type="number" name="x" value="${param.x }">
	<select name="op">
		<option value="1" ${(param.op=="1")?"selected":""} >+</option>
		<option value="2" ${(param.op=="2")?"selected":""}>-</option>
		<option value="3" ${(param.op=="3")?"selected":""}>*</option>
		<option value="4" ${(param.op=="4")?"selected":""}>/</option>
	</select>
	<input type="number" name="y" value="${param.y }">
	<input type="submit" value="=">
	<span>${TingUtils.ops(param.x,param.y,param.op)}</span>
</form>
</body>
</html>