package com.service;

import com.dao.AdminDao;
import com.dao.AdminDaoImple;
import com.dto.Admin;

public class AdminServiceImple implements AdminService{

	private AdminDao adminDao;
	public AdminServiceImple() {
		
		adminDao=new AdminDaoImple();
	}
	
	@Override
	public int register(Admin admin) {
		
		return adminDao.register(admin);
	}


	@Override
	public boolean login(Admin admin) {
		
		return adminDao.login(admin);
	}


}
