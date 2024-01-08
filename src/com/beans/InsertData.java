package com.beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.dao.ConnectionProvider;

public class InsertData {
	private Connection con = null;
	
	public boolean savedata(InfoBeans bean) {
		boolean valid = false;
		
		try {
			con = ConnectionProvider.getConnection();
			String query = "insert into user(Name,Email,Phone,Password) values(?,?,?,?)";
			PreparedStatement prst = con.prepareStatement(query);
			prst.setString(1, bean.getUsername());
			prst.setString(2, bean.getUseremail());
			prst.setString(3, bean.getUserphone());
			prst.setString(4, bean.getUserpass());
			prst.execute();
			valid = true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return valid;
	}
	
//	public InfoBeans checkEmail(String email) {
//		InfoBeans user = null;
//		try {
//			con = ConnectionProvider.getConnection();
//			PreparedStatement ps = con.prepareStatement("select * from user");
//			ResultSet rs = ps.executeQuery();
//			if(rs.next()) {
//				user = new InfoBeans();
//				user.setUseremail(rs.getString("Email"));
//			}
//		}catch(Exception e) {
//			e.printStackTrace();
//		}
//		
//		return user;
//	}
	
	public InfoBeans getUserEmailAndPassword(String email,String password) {
		InfoBeans user = null;
		try {
			con = ConnectionProvider.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from user where Email=? and Password=?");
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				user = new InfoBeans();
				user.setUsername(rs.getString("Name"));
				user.setUseremail(rs.getString("Email"));
				user.setUserphone(rs.getString("Phone"));
				user.setUserpass(rs.getString("Password"));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return user;
		
	}
}
