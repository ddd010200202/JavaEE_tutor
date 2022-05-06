package tw.ting.ting01;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class Ting18
 */
@WebServlet("/Ting18")
@MultipartConfig(
		location="C:\\Users\\user\\eclipse-workspace\\test03\\src\\main\\webapp\\upload"
		)
public class Ting18 extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Collection<Part> parts= request.getParts();
		int i =0;
		for(Part part:parts) {//多檔一次上傳
			String name =part.getName();
			String sname =part.getSubmittedFileName();
			if(name.equals("upload")) {
				if(sname.length()==0)continue;
				part.write(createNewFilename(i++));
			}
		}
		
		
	}
	private String createNewFilename(int i) {
		SimpleDateFormat sd =new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss_SSS");
		String fname =sd.format(new Date())+"_"+i+".png";
		return fname;
	}

}
