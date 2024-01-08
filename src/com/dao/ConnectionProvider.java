package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {
	public static Connection getConnection() throws Exception {
		Connection con = null;
		
		Class.forName(DatabaseConnection.DATABASE_DRIVER);
		con =  DriverManager.getConnection(DatabaseConnection.DATABASE_URL, DatabaseConnection.DATABASE_USER, DatabaseConnection.DATABASE_PASSWORD);
		return con;
	}
}
