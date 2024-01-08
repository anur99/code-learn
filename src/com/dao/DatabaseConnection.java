package com.dao;

public interface DatabaseConnection {
	public static final String DATABASE_DRIVER = "com.mysql.cj.jdbc.Driver";
	public static final String DATABASE_URL = "jdbc:mysql://localhost:3306/project1?zeroDateTimeBehavior=CONVERT_TO_NULL";
	public static final String DATABASE_USER = "root";
	public static final String DATABASE_PASSWORD = "anurag4321";
}
