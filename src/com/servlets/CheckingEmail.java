package com.servlets;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.dao.ConnectionProvider;

public class CheckingEmail {
	public static void main(String[] args) {
		String email = "anurag@gmail.com";
		List<String> list = new ArrayList<String>();
		Connection con = null;
		try {
			con = ConnectionProvider.getConnection();
			PreparedStatement ps = con.prepareStatement("select Email from user");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				list.add(rs.getString("Email"));
			}
			Iterator<String> iter = list.iterator();
			while(iter.hasNext()) {
				String ema = iter.next();
				if(ema.equals(email)) {
					System.out.println(email);
					break;
				}
				else {
					System.out.println("Email not Exists");
				}
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
}
