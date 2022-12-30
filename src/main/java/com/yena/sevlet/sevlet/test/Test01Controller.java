package com.yena.sevlet.sevlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test01Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		//문자 인코딩 설정
		response.setCharacterEncoding("utf-8");
				
		//컨텐츠 타입 MIME
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		//Test01.
		Date now = new Date();
		
		//날짜 포메팅
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일");
		String date = formatter.format(now);
		
		out.println("오늘의 날짜는 " + date + " 입니다");
		
		
	}
}
