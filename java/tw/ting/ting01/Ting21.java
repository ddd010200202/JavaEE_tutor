package tw.ting.ting01;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Ting21")
public class Ting21 extends HttpServlet {
	
	public Ting21() {
		// 1.載入驅動程式 Servlet這邊一定要做 只要做一次就好所以寫在建構式 把mysql-connector-java-8.0.28.jar放在WEB-INF/lib inf裡面都不要放前端的東西 
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			System.out.println("ok");
		} catch (Exception e) {
			System.out.println(e.toString());
		}
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		showDatevases();//把連線建立在另外的方法

		
		// 3.SQL 敘述句 SQL statement
		// 4.執行SQL敘述句 execute SQL statement
		
		//Controller
		//1. 接收參數，整理
		//2. Model => 演算法
		//3. 呈現=> View
	}
	private void showDatevases() {
		// 2.建立連線 Create connection	
		Properties prop =new Properties();
		prop.put("user", "root");
		prop.put("password","");
		try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/",prop)){
			Statement stmt= conn.createStatement();
			ResultSet rs= stmt.executeQuery("show databases");
			while(rs.next()) {
				String dbName= rs.getString(1);
				System.out.println(dbName);
			}
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
	}

}
