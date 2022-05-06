package tw.ting.ting01;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ting08
 */
@WebServlet("/Ting08")
public class Ting08 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String account =request.getParameter("account");
		String password =request.getParameter("password");
		String gender =request.getParameter("gender");
		String[] hobby= request.getParameterValues("hobby");
		System.out.println(account);
		System.out.println(password);
		System.out.println(gender.equals("f")?"female":"male");
		try {
			for(String h :hobby) {
				System.out.println(h);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

	}



}
