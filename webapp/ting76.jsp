<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Rong Ting Company</title>
		<script>
			var x=document.getElementById('x').value;
			var y=document.getElementById('y').value;
			console.log(x)
			var xhttp=new XMLHttpRequest();
			//ajax get
			function test1(){
				var max = document.getElementById('max').value;
				xhttp.onreadystatechange= callback;
				xhttp.open("GET","ting77.jsp?max="+max);
				xhttp.send();
			}
			function callback(){
				console.log("ok")
				if(xhttp.readyState==4&&xhttp.status==200){
					console.log("debug:"+xhttp.responseText);
					document.getElementById('here').innerHTML= xhttp.responseText;
				}
			}
			//ajax post
			function test2(){
				xhttp.open("POST","ting78.jsp")
				xhttp.onreadystatechange= callback2;
				xhttp.setRequestHeader(
						'Content-type','application/x-www-form-urlencoded');
				xhttp.send('x='+x+'&y='+y);
			}
			function callback2(){
				if(xhttp.readyState==4&&xhttp.status==200){
					console.log("debug:"+xhttp.responseText);
					document.getElementById('result').innerHTML= xhttp.responseText;
				}
			}
		</script>
	</head>
	<body>
		<input type="number" id="max" >
		<input type="button" value="test1" onclick="test1()">
		<span id="here"></span>
		<hr>
		<input type="number" id="x">+
		<input type="number" id="y">
		<input type="button" value="test2" onclick="test2()">
		<span id="result"></span>
	</body>
</html>