package com.yena.sevlet.sevlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test05_1")
public class Test05_1Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/html");
		
		PrintWriter out = res.getWriter();
		
		String number = req.getParameter("number");
		int num = Integer.parseInt(number);
		
		out.println("<html><head></head>");
		out.println("<body>");
		out.println("<h1>구구단 : " + num + "단</h1>");
		out.println("<ul>");
		
		for(int i = 1; i <= 9; i++) {
			out.println("<li>" + num + "X" + i + " = " + num * i + "</li>");
		}
		
		out.println("</ul></body></html>");
	}
}
