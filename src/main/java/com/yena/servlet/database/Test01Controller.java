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

@WebServlet("/db/Test01")
public class Test01Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		res.setContentType("text/plain");
		
		PrintWriter out = res.getWriter();
	
		//MysqlService에는
		//connect() / select() / update() / disconnect() 있음
		MysqlService mysqlService = new MysqlService();
		mysqlService.connect();
		
		
		//insert하기
		String insertQuery = "INSERT INTO `real_estate`\r\n"
				+ "(`realtorId`, `address`, `area`, `type`, `price`, `rentPrice`, `createdAt`, `updatedAt`)\r\n"
				+ "VALUE\r\n"
				+ "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, NULL, now(), now());";
		
		int count = mysqlService.update(insertQuery);
		
		out.println("insert 수행 결과 >> " + count);
		
		//select 하기(전체 매물 리스트 출력)
		//매물주소, 면적, 타입만 출력하는데 id 기준 내림차순으로 10개만 출력
		//String selectQuery = "SELECT concat('매물주소 : ', `address`, ' / 면적 : ', `area`, ' / 타입 : ', `type`) FROM `real_estate` ORDER BY id DESC LIMIT 10;";
		String selectQuery = "SELECT * FROM `real_estate` ORDER BY id DESC LIMIT 10;";
		ResultSet resultSet = mysqlService.select(selectQuery);
		
		try {
			while(resultSet.next()) {
				String address = resultSet.getString("address");
				int area = resultSet.getInt("area");
				String type = resultSet.getString("type");
				
				out.println("매물 주소 : " + address + " / 면적 : " + area + " / 타입 : " + type);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//접속 끊기
		mysqlService.disconnect();
		
		
		
		
		
		
	}
}
