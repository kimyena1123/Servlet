package com.yena.sevlet.sevlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test08_T")
public class Test08Teacher extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/html");
		
		PrintWriter out = res.getWriter();
		
		String keyword = req.getParameter("keyword");
		
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		out.println("<html><head></head><body>");
		
		for(String text:list) {
			
			if(text.contains(keyword)) {
				//볼드처리
				// ex) 강남역 최고 맛집 소개합니다
				//     강남역 최고 <b>맛집</b> 소개합니다.
				
				// 맛집 -> <b>맛집</b> <- 특정한 문자열에서 다른 문자열로 바꾸기
				text = text.replace(keyword, "<b>" + keyword + "</b>");
				
				out.println(text + "<hr>");
			}
			
		}
		
		out.println("</body></html>");
		
	}
}
