package tw.ting.ting01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Ting04")
public class Ting04 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String strX=  request.getParameter("x");
		String strY=  request.getParameter("y");
		//System.out.println(strX+":"+strY);
		int x = Integer.parseInt(strX);
		int y = Integer.parseInt(strY);
		int result =x+y;
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out =response.getWriter();
		out.printf("%s+%s=%d", strX,strY,result);
		response.flushBuffer();
	}



}
