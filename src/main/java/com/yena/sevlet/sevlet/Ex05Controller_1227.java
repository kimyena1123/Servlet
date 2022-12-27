package com.yena.sevlet.sevlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex05")
public class Ex05Controller_1227 extends HttpServlet{

	@Override
	//doGet -> doPost
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/html");
		
		PrintWriter out = res.getWriter();
		
		//이름과 생년월일을 전달받고, 이름과 나이를 출력
		String name = req.getParameter("name");
		String birth = req.getParameter("birth");
		
		//생년월일로 나이계산
		String yearString = birth.substring(0,4);
		int year = Integer.parseInt(yearString);
		
		int age = 2022 - year + 1;
		
		out.println("<html><head></head>");
		out.println("<body><h3>이름 : " + name + " <h3>나이 : " + age + "</h3></body></html>");
	}
}
