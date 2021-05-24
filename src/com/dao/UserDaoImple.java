package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.conn.MyConn;
import com.dto.User;

public class UserDaoImple implements UserDao{

	
	private MyConn myConn;
	
	
	public UserDaoImple() {
		myConn=new MyConn();
	}

	@Override
	public int register(User user) {
		int i=0;
		try {
			Connection con=myConn.getConn();
			PreparedStatement s=con.prepareStatement("insert into user (user_name,user_pass,email_id) values(?,?,?)");
			s.setString(1,user.getUserName());
			s.setString(2, user.getUserPass());
			s.setString(3, user.getEmailId());
			
			i=s.executeUpdate();
			con.close();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
 		
		return i;
	}

	@Override
	public boolean login(User user) {
	
		boolean flag=false;
		try {
			Connection con=myConn.getConn();
			PreparedStatement s=con.prepareStatement("select * from user where user_name=? and user_pass=? and email_id=?");
			s.setString(1,user.getUserName());
			s.setString(2, user.getUserPass());
			s.setString(3, user.getEmailId());
			ResultSet rs=s.executeQuery();
			if(rs.next()) {
				user.setUserId(rs.getInt("user_id"));
				flag=true;
			}
			con.close();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
 		
		return flag;
	
	}

	@Override
	public int forget(User user) {
		int i=0;
		try {
			System.out.print(user.toString());
			Connection con=myConn.getConn();
			PreparedStatement s=con.prepareStatement("update user set user_name=? ,user_pass=? where email_id=?");
			s.setString(1,user.getUserName());
			s.setString(2, user.getUserPass());
			s.setString(3, user.getEmailId());
			
			
			i=s.executeUpdate();
			con.close();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
 		
		return i;
	}

}
