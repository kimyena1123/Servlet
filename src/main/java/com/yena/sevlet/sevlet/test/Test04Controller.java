package com.yena.sevlet.sevlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test04")
public class Test04Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/html");
		
		PrintWriter out = res.getWriter();
		
		out.println("<html>");
		out.println("<head></head>");
		out.println("<body>");
		out.println("<ul>");
		//for문 사용 -> 1부터 30까지의 li태그 만들기
		for(int i = 1; i <= 30; i++) {
			out.println("<li>" + i + "번째 리스트" + "</li>");
		}
		out.println("</ul>");
		out.println("</body>");
		out.println("</html>");
		
	}
}
