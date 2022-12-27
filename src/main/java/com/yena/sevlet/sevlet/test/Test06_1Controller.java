package com.yena.sevlet.sevlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test06_1")
public class Test06_1Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		res.setCharacterEncoding("utf-8");
		res.setContentType("application/json");
		
		PrintWriter out = res.getWriter();
		
		String number1 = req.getParameter("number1");
		String number2 = req.getParameter("number2");
		
		int num1 = Integer.parseInt(number1);
		int num2 = Integer.parseInt(number2);
		
		out.println("{\"addition\": " + (num1 + num2) + 
					",\"subtraction\": " + (num1 - num2) +
					",\"multiplication\":" + (num1 * num2) +
					",\"division\": " + (num1 / num2) +
					"}");
		
		
	}
}
