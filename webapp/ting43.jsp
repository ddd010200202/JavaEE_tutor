<%@page import="tw.ting.utils.Student"%>
<%
	String ky1= request.getParameter("key1");
	String ky2= request.getParameter("key2");
	
	Student s1 =new Student("Brad");
%>
I am ting43.jsp
<hr>
Key1:<%=ky1 %><br>
Key2:<%=ky2 %><br>
<hr>
<!-- 印出來是toString位置 -->
Student:<%=s1.toString() %>