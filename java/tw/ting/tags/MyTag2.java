package tw.ting.tags;

import java.io.IOException;
import java.io.StringWriter;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class MyTag2 extends SimpleTagSupport{
	@Override
	public void doTag() throws JspException, IOException {
		super.doTag();
		JspContext context= getJspContext();
		JspWriter out= context.getOut();
		JspFragment body= getJspBody();
		/*innerhtml裡的東西*/
		StringWriter sw =new StringWriter();
		body.invoke(sw);
		System.out.println(sw);
		out.print(sw.toString().toUpperCase());
	}
}
