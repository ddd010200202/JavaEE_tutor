<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.LinkedList"%>
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
<!-- json檔案匯入 -->
<c:import var="data" url="https://data.coa.gov.tw/Service/OpenData/ODwsv/ODwsvAgriculturalProduce.aspx"/>
<!--上面已經做了這件事 pageContext.setAttribute("data", ~)	 -->
<% 
	Object obj =pageContext.getAttribute("data");
	String dataString=	(String)pageContext.getAttribute("data");
	JSONArray root= new JSONArray(dataString);
	LinkedList<HashMap<String,String>> gift =new LinkedList<>();
	for (int i=0;i<root.length();i++){
		JSONObject row =root.getJSONObject(i);
		HashMap<String,String> rdata=new HashMap<>();
		rdata.put("Name", row.getString("Name"));
		rdata.put("SalsePlace", row.getString("SalePlace"));
		rdata.put("ProduceOrg", row.getString("ProduceOrg"));
		rdata.put("ContactTel", row.getString("ContactTel"));
		rdata.put("pic", row.getString("Column1"));
		
		gift.add(rdata);
	}
	pageContext.setAttribute("gift", gift);
%>
<p id="test"></p>
<table border="1" width="100%">
	<tr>
		<th>Name</th>
		<th>salePlace</th>
		<th>ProduceOrg</th>
		<th>ContactTel</th>
		<th>picture</th>
	</tr>
	<c:forEach items="${gift }" var="g">
	<tr>
		<th>${g.Name}</th>
		<th>${g.SalsePlace}</th>
		<th>${g.ProduceOrg}</th>
		<th>${g.ContactTel}</th>
		<th><img src="${g.pic} " width='100px'></th>
	</tr>
	</c:forEach>
	
</table>
<script type="text/javascript">
	var b =${data}
	var apple=JSON.stringify(b)
	console.log(apple)
	document.getElementById("test").innerText=apple;
</script>
</body>
</html>