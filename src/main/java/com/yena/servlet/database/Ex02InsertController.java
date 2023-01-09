package com.yena.servlet.database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yena.servlet.common.MysqlService;

@WebServlet("/db/ex02_insert")
public class Ex02InsertController extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		//res.setContentType("text/plain");
		
		//PrintWriter out = res.getWriter();
		
		//이름, 생년월일, 이메일 파라미터로 전달받기(얻기)
		String name = req.getParameter("name");
		String birth = req.getParameter("birth");
		String email = req.getParameter("email");
		
		
		// insert 쿼리 수행
		// 채워질 값을 전달 받아서 쿼리에 추가한다.
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String insertQuery = "INSERT INTO `new_user`\r\n"
				+ "(`name`, `yyyymmdd`, `email`, `createdAt`, `updatedAt`)\r\n"
				+ "VALUE\r\n"
				+ "('" + name + "', '"+ birth +"', '"+ email +"', now(), now());";
		
		int count = mysqlService.update(insertQuery);
		
		//out.println("수행 결과 >> " + count + " 행 추가됨");
		
		mysqlService.disconnect();
		
		//redirect
		res.sendRedirect("/db/ex02.jsp");
		
		
		
		
		
		
	}
}
