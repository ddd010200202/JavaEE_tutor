package tw.ting.ting01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ting07
 */
@WebServlet("/Ting07")
public class Ting07 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int x,y,result;
		try {
			String strX= request.getParameter("x");
			String strY= request.getParameter("y");
			if(strX!=null &&strY!=null) {
				x = Integer.parseInt(strX);
				y = Integer.parseInt(strY);
				result =x+y;
			}else {
				x=y=result=0;
			}
			
		} catch (Exception e) {
			x=y=result=0;
		}

		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<meta charset=\"UTF-8\" >");
		out.println("<form action=\"Ting07\">");
		out.println("<input name=\"x\" value='"+x+"'>");
		out.println("+");
		out.println("<input name=\"y\" value='"+y+"'>");
		out.println("<input type=\"submit\" value=\"=\">");
		out.println(result);
		out.println("</form>");
		
		response.flushBuffer();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

}
