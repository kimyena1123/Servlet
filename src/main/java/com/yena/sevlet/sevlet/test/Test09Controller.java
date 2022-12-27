package com.yena.sevlet.sevlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test09")
public class Test09Controller extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		res.setContentType("text/html");
		
		PrintWriter out = res.getWriter();
		
		String name = req.getParameter("name");
		String myself = req.getParameter("myself");
		
		out.println("<html><head></head><body>");
		out.println("<h1>" + name + "의 지원이 완료되었습니다. </h1><hr>");
		out.println("지원내용<br>");
		out.println("<p>" + myself + "</p>");
	}
}
