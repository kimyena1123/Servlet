package com.yena.servlet.database;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yena.servlet.common.MysqlService;

@WebServlet("/db/test02_insert")
public class Test02InsertController extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		String siteName = req.getParameter("siteName");
		String siteUrl = req.getParameter("siteUrl");
		
		//insert 쿼리 수행
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String insertQuery = "INSERT INTO `site`\r\n"
				+ "(`name`, `url`, `createdAt`, `updatedAt`)\r\n"
				+ "VALUE\r\n"
				+ "('" + siteName + "', '" + siteUrl + "', now(), now());";
	
		int count = mysqlService.update(insertQuery);
		
		mysqlService.disconnect();
		
		//redirect
		res.sendRedirect("/db/test02.jsp");
	
	
	
	
	
	}
}
