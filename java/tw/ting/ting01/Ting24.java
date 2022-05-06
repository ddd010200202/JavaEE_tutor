package tw.ting.ting01;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tw.ting.utils.BCrypt;


@WebServlet("/Ting24")
public class Ting24 extends HttpServlet {
	private Connection conn;
    public Ting24() {
		try {
			// 1.載入驅動程式
			Class.forName("com.mysql.cj.jdbc.Driver");
			// 2.建立連線 Create connection	
			Properties prop =new Properties();
			prop.put("user", "root");
			prop.put("password", "");
			conn = DriverManager.getConnection("jdbc:mysql://localhost/iii",prop);
			System.out.println("ok");
		} catch (Exception e) {
			System.out.println(e.toString());
		}
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR,"get out here");//get拋出500例外被做出來的
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String account = request.getParameter("account");
		String password = request.getParameter("password");
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out= response.getWriter();
		
		
		try {
			if(login(account,password)) {
				response.sendRedirect("ting25.html");//導向
				
			}else {
				out.print("<script language='javascript'>alert('登入失敗');</script>");//這東西沒用因為下面那行導向權力高
				response.sendRedirect("ting24.html");
			}
		}catch (Exception e) {
			response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR,e.toString());
		}
		response.flushBuffer();
		
	}
	private boolean login(String account,String password) 
		throws Exception
		{
		boolean isRight=false;
		String sql ="SELECT * FROM member WHERE account=?";
		PreparedStatement pstmt =conn.prepareStatement(sql);
		pstmt.setString(1, account);
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()) {
			System.out.println("account scusses");
			String hashPassword= rs.getString("password");
			if(BCrypt.checkpw(password, hashPassword)) {
				isRight=true;
			}
		}
		return isRight;
	}
}
