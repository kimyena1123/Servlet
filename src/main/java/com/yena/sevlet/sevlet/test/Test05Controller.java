package com.yena.sevlet.sevlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test05")
public class Test05Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/html");
		
		PrintWriter out = res.getWriter();
		
		String number = req.getParameter("number");
		
		out.println("<html><head></head>");
		out.println("<body><h1>구구단 링크</h1>");
		out.println("<a href = '/servlet/test05_1?number=5'>5단</a><br> ");
		out.println("<a href = '/servlet/test05_1?number=7'>7단</a><br> ");
		out.println("<a href = '/servlet/test05_1?number=9'>9단</a><br> ");
		
		out.println("</body></html>");
	}
}
