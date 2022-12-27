package com.yena.sevlet.sevlet;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex02")
public class Ex02Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/html");
		
		PrintWriter out = res.getWriter();
		
		//1부터 10까지의 합
		int sum = 0;
		
		for(int i = 1; i <= 10; i++) {
			sum += i;
		}
		
		out.println("<html><head><titile>합계구하기</title></head>");
		out.println("<body><h1>합계 : " + sum + "</h1></body></html>");
		
	}
}
