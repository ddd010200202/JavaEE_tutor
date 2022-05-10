<%@page import="tw.ting.utils.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.isNew()||request.getParameter("account")==null){
		session.invalidate();
		response.sendRedirect("ting71.jsp");
		/*sessionisNew沒有行正常管道來這裡直接傳回不要做下面的事情了*/
		return;
	}
%>
<%
	String account =request.getParameter("account");
	String password =request.getParameter("password");
	
	if(account.equals("ting")&&password.equals("123456")){
		//ok
		
		Member member =new Member();
		session.setAttribute("member", member);
		
		member.setAccount(account);
		member.setRealname("Ting");
		
		
		response.sendRedirect("ting73.jsp");
		
	}else{
		//error 
		session.invalidate();
		if(password.equals("123456")){
			response.sendRedirect("ting71.jsp?error=3");
		}else if(account.equals("ting")){
			response.sendRedirect("ting71.jsp?error=2");
		}else{
			response.sendRedirect("ting71.jsp?error=1");
			
		}
		
	}

%>