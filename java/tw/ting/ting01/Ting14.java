package tw.ting.ting01;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tw.ting.utils.Ting15;


@WebServlet("/Ting14")
public class Ting14 extends HttpServlet {


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		//Controller
		//1. 接收參數，整理
			String x=request.getParameter("x");
			String y=request.getParameter("y");
			String op=request.getParameter("op");
			System.out.println(op);
			if(x==null)x="";
			if(y==null)y="";
			if(op==null)op="";
		//2. Model => 演算法
			Ting15 model=new Ting15(x,y);
			double result = model.operator(op);
			System.out.println(result);
			
		//3. 呈現=> View forward的實作
			request.getRequestDispatcher(String.format("Ting16?result=%f&view=%s", result,"view1")).
				forward(request, response);
	}



}
