package com.dao;

import com.dto.User;

public interface UserDao {

	int register(User user);
	boolean login(User user);
	int forget(User user);
}
