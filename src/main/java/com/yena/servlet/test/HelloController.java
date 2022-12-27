package com.yena.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//HttpServlet을 상속받은 이유는 메소드 하나를 override하기 위해서이다.
public class HelloController extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//PrintWriter라고 하는 클래스 활용. 
		//PrintWriter에 대한 변수를 일반적으로 out이라고함
		PrintWriter out = response.getWriter(); 
		out.println("Hello World!!");
		
	}
	
}
