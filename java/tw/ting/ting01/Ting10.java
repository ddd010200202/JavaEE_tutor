package tw.ting.ting01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ting10
 */
@WebServlet("/Ting10")
public class Ting10 extends HttpServlet {


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		RequestDispatcher dispatcher= request.getRequestDispatcher("ting11.html");
		
		String x=  request.getParameter("x");
		String y=  request.getParameter("y");
		RequestDispatcher dispatcher1= request.getRequestDispatcher("Ting11?z=100&y=200");
		//-------------
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("<h1> 吳榮庭公司</h1>");
		out.print(x+":"+y);
		out.print("<hr>");
		dispatcher.include(request, response);//include是從request實做出來的
		dispatcher1.include(request, response);
		out.print("<hr>");
		out.print("Copyleft");
		
		response.flushBuffer();
	}



}
