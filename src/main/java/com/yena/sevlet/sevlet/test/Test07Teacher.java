package com.yena.sevlet.sevlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07_T")
public class Test07Teacher extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException{
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/html");
		
		PrintWriter out = res.getWriter();
		
		String address = req.getParameter("address");
		String card = req.getParameter("card");
		String price = req.getParameter("price");
		
		out.println("<html><head></head><body>");
		
		if(!address.contains("서울시")) {
			out.println("<h1>배달 불가 지역입니다</h1>");
		}else if(card.equals("신한카드")) {
			out.println("<h1>결제 불가 카드입니다</h1>");
		}else {
			out.println("<h2>" + address + "로 배달중 </h2>");
			out.println("<hr> 결제금액 : " + price);
		}
		
		out.println("</body></html>");
		
	}
}
