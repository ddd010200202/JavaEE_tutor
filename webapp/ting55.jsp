<%@page import="java.util.HashMap"%>
<%@page import="java.util.LinkedList"%>
<%@page import="tw.ting.utils.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*setAttribute擁有了這個屬性去存取他*/
	
	/*省略寫法名稱一樣會存取範圍最小的*/
	
	/*page < request < session <application*/
	
	/*session(會話做一次)資料只要連線存在就存在重整清除快取都沒用 */
	
	/*EL純表現不給值*/
	
	String[] var1 ={"Brad1","Ting1","Tony1","Anoy1"};
	//pageContext.setAttribute("names", var1);
	
	Student s1 =new Student("吳榮庭");
	pageContext.setAttribute("s1", s1);
	
	String[] var2 ={"Brad2","Ting2","Tony2","Anoy2"};
	//request.setAttribute("names", var2);
	
	String[] var3 ={"Brad3","Ting3","Tony3","Anoy3"};
	//session.setAttribute("names", var3);
	
	String[] var4 ={"Brad4","Ting4","Tony4","Anoy4"};
	application.setAttribute("names", var4);
	
	LinkedList<String> list = new LinkedList<>();
	list.add("aaa");list.add("bbb");list.add("ccc");list.add("ddd");
	pageContext.setAttribute("list", list);

	HashMap<String,String> maps = new HashMap<>();
	maps.put("x","12.3");maps.put("y","3.14");
	pageContext.setAttribute("maps", maps);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rong Ting Company</title>
</head>
<body>
${pageScope.names[0]}<br>
${requestScope.names[1]}<br>
<!-- session資料只要連線存在就存在 -->
${sessionScope.names[2]}<br>
${applicationScope.names[3]}<br>
<hr>
debug => ${names[0]}
<hr>
${pageScope.s1}<br>
<hr>
pageScope可省略:<br>
List:${pageScope.list[0]}<br>
List:${list[0]}<br>
<hr>
maps: ${maps["x"]} :${maps["y"]} ;<br>
maps: ${maps.x} :${maps.y} ;
<hr>
EL也可以做計算(就算是本身是字串getparam):<br>
${10+3}<br>
http://localhost:8080/test03/ting55.jsp?x=10&y=3 =>13 <br>
${param.x+param.y}<br>
EL比大比小:<br>
${param.x>param.y}<br>
${10>param.y}<br>
EL字串跟數字會自己換:<br>
${param.y=="3"}<br>
${param.y==3}<br>
</body>
</html>