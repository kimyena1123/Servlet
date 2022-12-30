package com.yena.sevlet.sevlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test10")
public class Test10Controller extends HttpServlet{
	
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "hagulu");
	        put("password", "asdf");
	        put("name", "김인규");
	    }
	};
	
	
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		res.setContentType("text/html");
		
		PrintWriter out = res.getWriter();
		
		String user_id = req.getParameter("user_id");
		String user_pw = req.getParameter("user_pw");

		out.println("<html><head></head><body>");
//		out.println("<h1>" + userMap.get("id") + "</h1>");
//		out.println("<h1>" + userMap.get("password") + "</h1>");
//		out.println("있나?" + userMap.containsKey("hagulu"));
		
		//사용자가 입력한 id와 userMap의 해당 id가 같다면
		if(userMap.containsValue(user_id) && userMap.containsValue(user_pw)) {
			out.println("<h1>" + userMap.get("name") + "님 환영합니다.</h1>");
		}else {
			out.println("<h1>아이디 또는 비밀번호가 일치하지 않습니다.</h1>");
		}
	}
}
