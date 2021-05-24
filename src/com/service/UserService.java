package com.service;

import com.dto.User;

public interface UserService {

	int register(User user);
	boolean login(User user);
	int forget(User user);
	
}
