package com.yena.sevlet.sevlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class Test07Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/html");
		
		PrintWriter out = res.getWriter();
		
		String address = req.getParameter("address");
		String card = req.getParameter("card");
		String price = req.getParameter("price");
		
		int payment = Integer.parseInt(price);
		
		out.println("<html><head></head>");
		out.println("<body>");
		
		if(address.contains("서울시")) { //만약 서울시가 들어있다면 (true)
			
			if(card.contains("신한카드")) {
				out.println("<h1>결제불가카드입니다</h1>");
			}else {
				out.println("<h1>" + address + "</h1><hr>");			
				out.println("<div> 결제금액 : " + payment);				
			}
		}
		else {
			out.println("<h1>배달불가지역입니다</h1>");
		}

		
	}
}
