package com.yena.sevlet.sevlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Ex03Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException{
		
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/html");
		//res.setContentType("application/json");
		
		PrintWriter out = res.getWriter();
		
		//이름과 생년월일을 전달받고, 이름과 나이를 html 구성
		String name = req.getParameter("name");
		String birth = req.getParameter("birth");
		
		//out.println(name + " " + birth);
		
		//생년월일로 나이계산
		//20011123
		String yearString = birth.substring(0,4);
		int year = Integer.parseInt(yearString);
		
		int age = 2022 - year + 1;
		
		out.println("<html><head></head>");
		out.println("<body><h3>이름 : " + name + " <h3>나이 : " + age + "</h3></body></html>");
		
		//xml
		//<name>김인규</name> <age>25</age>
		//json
		//{"name" : "김예나", "age" : 22}
		//["김예나", "유재석", "지석진"]
		
		
		//out.println("{\"name\":\"" + name + "\",\"age\":\"" + age + "}");
		
	}
}
