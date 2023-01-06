package com.yena.servlet.database;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yena.servlet.common.MysqlService;

@WebServlet("/db/ex01")
public class Ex01Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		res.setContentType("text/html");
		
		PrintWriter out = res.getWriter();
		
		MysqlService mysqlService = new MysqlService();
		mysqlService.connect();
		
		String selectQuery = "SELECT * FROM used_goods";
		ResultSet resultSet = ((MysqlService) mysqlService).select(selectQuery);
		
		
		out.println("<html><head><title>중고물품 데베연동</title></head><body>");
		
		try {
			while(resultSet.next()) {
				String title = resultSet.getString("title");
				int price = resultSet.getInt("price");
				
				out.println("<div> 제목 : " + title + ", 가격 : " + price + "</div>");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		//insert
		String insertQuery = "insert into `used_goods`\r\n"
				+ "(`sellerId`, `title`, `price`, `description`, `picture`, `createdAt`, `updatedAt`)\r\n"
				+ "value\r\n"
				+ "(3, '고양이 간식 팝니다', 2000, '저희 고양이가 까탈리스워 안먹어서 팝니다', NULL, now(), now());";
		
		int count = ((MysqlService) mysqlService).update(insertQuery); // 실행된 행의 개수를 return한다.
		
		out.println("<div> 인서트 쿼리 수행 결과 : " + count + "</div>");
		
		out.println("</body></html>");
		
		mysqlService.disconnect();
		
		
		/*
		//used_goods table에 있는 모든 행 출력하기
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			//접속을 위한 주소, 아이디, 비밀번호가 필요함.
			String url = "jdbc:mysql://localhost:3306/megait";
			String userId = "root";
			String password = "kimyena3264";
			
			//접속
			Connection connection = DriverManager.getConnection(url, userId, password);
			Statement statement = connection.createStatement();
			
			//쿼리 수행
			String selectQuery = "SELECT * FROM `used_goods`;";
			ResultSet resultSet = statement.executeQuery(selectQuery);
			
			
			
			out.println("<html><head><title>중고물품 데베연동</title></head><body>");
			
			while(resultSet.next()) {
				String title = resultSet.getString("title");
				int price = resultSet.getInt("price");
				
				out.println("<div> 제목 : " + title + ", 가격 : " + price + "</div>");
			}
			
			out.println("</body></html>");
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		*/
		
	}
}
