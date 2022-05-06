package tw.ting.ting01;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.geom.AffineTransform;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ting20
 */
@WebServlet("/Ting20")
public class Ting20 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//取出圖片
		String source =
				"C:\\Users\\user\\eclipse-workspace\\test03\\src\\main\\webapp\\upload\\coffee.jpg";
		File file =new File(source);
		BufferedImage bimg = ImageIO.read(file);
		
		Font font =new Font("細明體", Font.BOLD, 96);
		
		AffineTransform tran =new AffineTransform();
		tran.rotate(Math.toRadians(Math.random()*60-30));
		Font font1= font.deriveFont(tran);
		tran.rotate(Math.toRadians(Math.random()*60-30));
		Font font2= font.deriveFont(tran);
		tran.rotate(Math.toRadians(Math.random()*60-30));
		Font font3= font.deriveFont(tran);
		
		
		Graphics2D g2d =bimg.createGraphics();
		g2d.setColor(Color.BLUE);
		g2d.setFont(font1);//文字體可以為null
		g2d.drawString("吳", 100, 200);//文字左下角為xy 所以不能設(0,0)
		g2d.setFont(font2);
		g2d.drawString("榮", 200, 300);
		g2d.setFont(font3);
		g2d.drawString("庭", 300, 400);

		response.setContentType("image/jpeg");
		OutputStream out= response.getOutputStream();
		//寫上圖片
//		ImageIO.write(bimg, "jpeg", out);
//		response.flushBuffer();
		
		
		String target ="C:\\Users\\user\\eclipse-workspace\\test03\\src\\main\\webapp\\upload\\coffee2.jpg";
		
		FileOutputStream fout =new FileOutputStream(target);
		//輸出圖片
		ImageIO.write(bimg, "jpeg", fout);
		fout.close();
		out.flush();
		out.close();
		response.flushBuffer();
	}


}
