<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@ attribute name="x" required="true"%>
<%@ attribute name="y" required="true"%>
<!--創造變數-->
<%@ variable name-given="add" %>
<%@ variable name-given="sub" %>

<c:set var="add" value="${x+y}"/>
<c:set var="sub" value="${x-y}"/>
<!-- 做在肚子裡面 -->
<jsp:doBody/>