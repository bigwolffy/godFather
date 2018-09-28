package com.service.impl;

import javax.annotation.Resource;


import com.dao.UserDao;
import com.model.User;
import com.service.UserService;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
	
	@Resource
	private UserDao userDao;
	public void register(User user) {
		userDao.register(user);
	}

}
