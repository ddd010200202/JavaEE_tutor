<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Rong Ting Company</title>
	</head>
	<script>
		var xhttp =new XMLHttpRequest();
		
		function test1(){
			xhttp.onreadystatechange =function(){
				if(this.readyState==1){
					document.getElementById("id1").innerHTML="OK1";
				}else if(this.readyState==2){
					document.getElementById("id2").innerHTML="OK2";
				}else if(this.readyState==3){
					document.getElementById("id3").innerHTML="OK3";
				}else if(this.readyState==4){
					document.getElementById("id4").innerHTML="OK4:"+this.status;
				}
			}
			xhttp.open("GET","ting.txt");
			xhttp.send();
		}
	</script>
	<body>
		<input type="button" value="Click Me" onclick="test1()">
		<div id="id1"></div>
		<div id="id2"></div>
		<div id="id3"></div>
		<div id="id4"></div>
		
	</body>
</html>