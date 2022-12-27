package com.yena.sevlet.sevlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test03")
public class Test03Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/html");
		
		PrintWriter out = res.getWriter();
		
		Date time = new Date();
		
		//시간
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd hh시 mm분 ss초");
		String timeString = formatter.format(time);
		
		out.println("<html><head></head>");
		out.println("<body><h1>[단독]고양이가 야옹해</h1>");
		out.println("<div>기사 입력 시간: " + timeString + "</div><hr><div>끝</div></body></html>");
	}
}
