<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rong Ting Company</title>
</head>
<body>

	<table border="1" width='100%'>
		<%
		final int ROWS = 4;
		final int COLS = 3;
		final int START = 3;
		for (int a = 0; a < ROWS; a++) {
			out.println("<tr>");
			for (int j = START; j < (START + COLS); j++) {
				int newj = j + 4 * a;
				if (COLS % 2 == 0){
					if (a % 2 == 0){
						if (newj % 2 == 0){
							out.println("<td bgcolor='pink'>");
						}else{
							out.println("<td bgcolor='yellow'>");
						}
					}else{
						if (newj % 2 != 0){
							out.println("<td bgcolor='pink'>");
						}else{
							out.println("<td bgcolor='yellow'>");
						}
						
					}
				}else{
					if (newj % 2 == 0){
						out.println("<td bgcolor='pink'>");
					}else{
						out.println("<td bgcolor='yellow'>");
					}
				}
				for (int i = 1; i <= 9; i++) {
			int r = newj * i;
			out.print(String.format("%dx%d = %d<br>", newj, i, r));
				}
				out.println("</td>");
			}
			out.println("</tr>");
		}
		%>

	</table>
</body>
</html>