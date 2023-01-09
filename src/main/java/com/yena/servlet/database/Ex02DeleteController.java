package com.yena.servlet.database;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yena.servlet.common.MysqlService;

@WebServlet("/db/ex02_delete")
public class Ex02DeleteController extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		int id = Integer.parseInt(req.getParameter("id"));
		
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String deleteQuery = "DELETE FROM `new_user` WHERE `id` = " + id + ";";
		
		mysqlService.update(deleteQuery);
		
		mysqlService.disconnect();
		
		//redirect
		res.sendRedirect("/db/ex02.jsp");
	}
}
