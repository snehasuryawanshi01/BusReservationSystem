package com.dao;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.conn.MyConn;
import com.dto.Admin;

public class AdminDaoImple implements AdminDao{

	private MyConn myConn;
	
	public AdminDaoImple() {
		myConn=new MyConn();
	}
	

	@Override
	public int register(Admin admin) {
		int i=0;
		try {
			Connection con=myConn.getConn();
			PreparedStatement s=con.prepareStatement("insert into admin (admin_name,admin_pass) values(?,?)");
			s.setString(1,admin.getAdminName());
			s.setString(2, admin.getAdminPass());
			
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
	public boolean login(Admin admin) {
		
		boolean flag=false;
		try {
			Connection con=myConn.getConn();
			PreparedStatement s=con.prepareStatement("select * from admin where admin_name=? and admin_pass=?");
			s.setString(1,admin.getAdminName());
			s.setString(2, admin.getAdminPass());
			ResultSet rs=s.executeQuery();
			if(rs.next()) {
				admin.setAdminId(rs.getInt("admin_id"));
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

}
