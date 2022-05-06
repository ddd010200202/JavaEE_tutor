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


@WebServlet("/Ting22")
public class Ting22 extends HttpServlet {
	private Connection conn;
    public Ting22() {
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
		request.setCharacterEncoding("UTF-8");
		String account =request.getParameter("account");
		String passwd =request.getParameter("password");
		String realname =request.getParameter("realname");
		
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out =response.getWriter();
		
		try {
			if(!isDupAccount(account)) {
				int row =addMember(account, passwd, realname);//作用筆數
				if(row>0) {
					//新增成功
					out.print("<script language='javascript'>alert('新增成功');</script>");
				}else {
					//新增失敗
					out.print("<script language='javascript'>alert('新增失敗');</script>");
				}
			}else {
				//帳號重複
				out.print("<script language='javascript'>alert('帳號重複');</script>");
				}
			}catch (Exception e) {
			System.out.println(e.toString());
		}
		response.flushBuffer();
	}
	
	private boolean isDupAccount(String account) throws Exception {//拋出例外
		String sql="SELECT count(*) as count FROM member WHERE account=?";//檢查帳號是否重複
		PreparedStatement pstmt =conn.prepareStatement(sql);
		pstmt.setString(1, account);
		ResultSet rs = pstmt.executeQuery();
		rs.next();
		int count= rs.getInt("count");
		return count>0;
	}
	private int addMember(String account,String password,String realname) throws Exception{
		String sql="INSERT INTO member (account,password,realname)VALUES(?,?,?)";// 3.SQL 敘述句 SQL statement
		PreparedStatement pstmt =conn.prepareStatement(sql);
		pstmt.setString(1, account);
		pstmt.setString(2, password);
		pstmt.setString(3, realname);
		return pstmt.executeUpdate();// 4.執行SQL敘述句 execute SQL statement
	}
}
