<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="ting"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rong Ting Company</title>
</head>
<body>
<ting:test1/>
<hr>
<ting:test2/>
<hr>
<ting:sayHello user="Ting"/>
<ting:sayHello user="ting"/>
<!-- 自訂標籤 name屬性名稱 required必定需要提醒  -->
<hr>
<ting:calc x="10" y="3">
	10+3=${add }<br/>
	10-3=${sub }<br/>
</ting:calc>
<hr>
<!-- 動態的屬性 -->
<table border="1" width="100%">
	<tr>
	<th>Name</th>
	<th>Price</th>
	</tr>
	<ting:myjsp pname="Camera" price="100"/>
	<ting:myjsp pname="iphone" price="1000"/>
	<ting:myjsp pname="Mouse" price="200"/>
	<ting:myjsp pname="Keyboard" price="10"/>
</table>
</body>
</html>