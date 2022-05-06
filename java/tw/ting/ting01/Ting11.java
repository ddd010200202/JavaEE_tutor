package tw.ting.ting01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Ting11")
public class Ting11 extends HttpServlet {


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String x=  request.getParameter("x");
		String[] y=  request.getParameterValues("y");
		String z=  request.getParameter("z");
		PrintWriter out = response.getWriter();
		out.print("<hr>Helllo Ting11<br>");
		out.print("y的長度:"+y.length+"<br>");
		for(String yy :y) {
			out.print("yy裡的值:"+yy+"<br>");
		}
		out.print("Ting11:"+x+":"+y+":"+z);
		response.flushBuffer();
		
	}



}
