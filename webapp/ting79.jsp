<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Rong Ting Company</title>
		<script>
		var xhttp=new XMLHttpRequest();
		//ajax get
		function test1(){
			
			xhttp.onreadystatechange= callback;
			xhttp.open("GET","ting80.jsp");
			xhttp.send();
		}
		function callback(){
			console.log("ok")
			if(xhttp.readyState==4&&xhttp.status==200){
				document.getElementById('realname').innerHTML= xhttp.responseText;
			}
		}
			setInterval(fetchData,1000)
			function fetchData(){
				test1();
			}
		</script>
	</head>
	<body>
		Realname =<span id="realname"></span>
	</body>
</html>