package com.yena.servlet.database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yena.servlet.common.MysqlService;

@WebServlet("/db/all_insert")
public class AllInsertController extends HttpServlet{

		@Override
		public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
			
			res.setContentType("text/plain");
			
			PrintWriter out = res.getWriter();
			
			String name = req.getParameter("sellerNickname");
			int nameId = Integer.parseInt(name);
			
			String goodsTitle = req.getParameter("goodsTitle");
			String goodsPrice = req.getParameter("goodsPrice");
			int price = Integer.parseInt(goodsPrice);
			String goodsDescription = req.getParameter("goodsDescription");
			String goodsUrl = req.getParameter("goodsUrl");
			
		
			//insert 쿼리 수행1
			MysqlService mysqlService = MysqlService.getInstance();
			mysqlService.connect();
			
		
			//used_goods
			
			String insertQuery = "INSERT INTO `used_goods`\r\n"
					+ "(sellerId, title, price, description, picture, createdAt, updatedAt)\r\n"
					+ "VALUE\r\n"
					+ "("+nameId+", '"+goodsTitle+"', "+price+", '"+goodsDescription+"', '"+goodsUrl+"', now(), now());";
			
			
			int count = mysqlService.update(insertQuery);
			
//			out.println("<html><head></head><body>");
//			out.println("닉네임 : "+ name);
//			out.println("goodsTitle : "+ goodsTitle);
//			out.println("price : "+ price);
//			out.println("goodsDescription : "+ goodsDescription);
//			out.println("goodsUrl : "+ goodsUrl);
//			out.println("수행결과 : " + count);
//			out.println("</body></html>");
			
			
			mysqlService.disconnect();
			
			//redirect
			res.sendRedirect("/jspTemplete/db/all.jsp");
		}
}
