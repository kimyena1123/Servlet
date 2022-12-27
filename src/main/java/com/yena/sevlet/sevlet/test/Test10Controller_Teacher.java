package com.yena.sevlet.sevlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test10_T")
public class Test10Controller_Teacher extends HttpServlet{

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
		
		//id, pw 전달받고, map에 있는 정보와 확인 후 처리
		String user_id = req.getParameter("user_id");
		String user_pw = req.getParameter("user_pw");
		
		out.println("<html><head></head><body>");
		
		if(!user_id.equals(userMap.get("id"))) { //id가 일치하지 않는 경우 id가 일치하지 않습니다. 를 출력
			out.println("<h2> id가 일치하지 않습니다. </h2>");
		}else if(!user_pw.equals(userMap.get("password"))) { //password가 일치하지 않는 경우 password가 일치하지 않습니다. 를 출력
			out.println("<h2>password가 일치하지 않습니다.</h2>");
		}else { // id, pw가 일치한다면
			out.println("<h1>" + userMap.get("name") + "님 환영합니다</h1>");
		}
		
	}
}
