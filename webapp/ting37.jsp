<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage='ting38.jsp' %>
<%
	String xStr = "", yStr = "", rStr = "",op="";
	
	if (request.getParameter("x") != null){
		xStr = request.getParameter("x");
		yStr = request.getParameter("y");
		op =request.getParameter("op");
	}
	
	try{
		int x = Integer.parseInt(xStr);
		int y = Integer.parseInt(yStr);
		double r = 0;
		switch(op){
			case"1":r=x+y;break;
			case"2":r=x-y;break;
			case"3":r=x*y;break;
			case"4":r=x*1.0/y;break;
			
		}
		rStr =r+"";
	}catch(Exception e){
		
	}
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RongTing Company</title>
</head>
<body>
<form>
	<input type="number" name="x" value="<%= xStr %>" />
	<select name="op">
		<option value="1" <%=op.equals("1")?"selected":"" %>>+</option>
		<option value="2"  <%=op.equals("2")?"selected":"" %>>-</option>
		<option value="3"  <%=op.equals("3")?"selected":"" %>>*</option>
		<option value="4"  <%=op.equals("4")?"selected":"" %>>/</option>
	</select>
	<input type="number" name="y" value="<%= yStr %>" />
	<input type="submit" value="=" />
	<span><%= rStr %></span>
</form>
</body>
</html>