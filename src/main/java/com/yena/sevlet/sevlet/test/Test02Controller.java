package com.yena.sevlet.sevlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test02Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		//문자 인코딩 설정
		response.setCharacterEncoding("utf-8");
						
		//컨텐츠 타입 MIME
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		Date time = new Date();
		
		//시간
		SimpleDateFormat formatter = new SimpleDateFormat("HH시 mm분 ss초");
		String timeString = formatter.format(time);
		
		out.println("현재 시간은 " + timeString + " 입니다");
	}
}
