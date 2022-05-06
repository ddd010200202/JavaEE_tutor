package tw.ting.ting01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tw.ting.utils.TingUtils;


@WebServlet("/Ting16")
public class Ting16 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String x=request.getParameter("x");
		String y=request.getParameter("y");
		String op=request.getParameter("op");
		String r =request.getParameter("result");
		String view =request.getParameter("view");
		System.out.println(op);

		if(op==null)op="";
		String op1= op.equals("1")?"selected":"";
		String op2= op.equals("2")?"selected":"";
		String op3= op.equals("3")?"selected":"";
		String op4= op.equals("4")?"selected":"";
		//回傳值類型跟寫入網頁
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out =response.getWriter();
		
		//view html的回傳
		String html= TingUtils.loadView(view);
		out.print(String.format(html,x,op1,op2,op3,op4,y,r));//回傳後代入%S...
		
		response.flushBuffer();
	}



}
