<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="tw.ting.utils.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rong Ting Company</title>
</head>
<body>
<c:if test='${fn:contains(param.name,"ting" )}'>
  OK
</c:if>
<hr>
<c:if test='${TingUtils.isKeyword(param.name,"ting")}'>
  OK
</c:if>
</body>
</html>