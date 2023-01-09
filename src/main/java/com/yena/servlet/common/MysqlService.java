package com.yena.servlet.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	
	//singleton
	//static을 붙이면 >> 객체 생성 없이 사용할 수 있는 변수가 된다.
	//외부에서 객체 생성할 수 없게!
	private static MysqlService mysqlService = null;
	
	//접속을 위한 주소, 아이디, 비밀번호가 필요함.
	private final String url = "jdbc:mysql://localhost:3306/megait";
	private final String userId = "root";
	private final String password = "kimyena3264";
	
	
	private Connection connection;
	private Statement statement;
	
	
	private MysqlService() {
		
	}
	
	
	//객체 생성을 관리하는 메소드
	public static MysqlService getInstance() {
		//무분별한 객체 생성을 막고 단 한 개의 객체 생성을 하기 위한 과정
		// 즉, 하나의 객체만 생성
		if(mysqlService == null) { // 비어있는 상태라면
			mysqlService = new MysqlService();
		}
		
		return mysqlService;
	}
	
	//접속기능
	public void connect() {
		//접속
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			connection = DriverManager.getConnection(url, userId, password);
			statement = connection.createStatement();			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//쿼리 수행 기능 select
	public ResultSet select(String query) {
		try {
			return statement.executeQuery(query);
		} catch (SQLException e) {
			
			e.printStackTrace();
			
			return null;
		}
	}

	
	//쿼리 수행 기능 insert update delete
	public int update(String query) {
		try {
			return statement.executeUpdate(query);
		} catch (SQLException e) {
			
			e.printStackTrace();
			
			return -1;
		}
	}

	// 접속 끊는 메소드
	public void disconnect() {
		try {
			statement.close();
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
