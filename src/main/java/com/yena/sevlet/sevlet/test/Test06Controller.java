package com.yena.sevlet.sevlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test06")
public class Test06Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/html");
		
		PrintWriter out = res.getWriter();
		
		String number1 = req.getParameter("number1");
		String number2 = req.getParameter("number2");
		
		out.println("<html><head></head>");
		out.println("<body>");
		out.println("<a href = '/servlet/test06_1?number1=120&number2=15'>120,15</a><br>");
		out.println("<a href = '/servlet/test06_1?number1=1500&number2=70'>1500,70</a><br>");
		out.println("<a href = '/servlet/test06_1?number1=96&number2=54'>96, 54</a><br>");
		
		out.println("</body></html>");
	}
}
