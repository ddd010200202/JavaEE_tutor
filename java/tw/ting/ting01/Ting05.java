package tw.ting.ting01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ting05
 */
@WebServlet("/Ting05")
public class Ting05 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		PrintWriter pw = response.getWriter();//最底層的文字資料輸出
		response.setContentType("text/html ; charset=UTF-8");
		PrintWriter out= response.getWriter();
		out.print("Served at: /test03");
		response.flushBuffer();
	}



}
