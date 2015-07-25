package com.twocore.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.twocore.dao.IUserDAO;
import com.twocore.model.UserModel;
import com.twocore.service.IUserService;

@Service("userService")
public class UserService implements IUserService {
	@Resource(name = "userDao")
	IUserDAO userDAO;

	@Override
	public UserModel queryByWeid(String id) {
		return userDAO.queryByWeId(id);
	}
	
	@Override
	public int queryUidByWeid(String id) {
		return userDAO.queryUidByWeID(id);
	}

	@Override
	public UserModel queryByName(String name) {
		// TODO Auto-generated method stub
		return userDAO.queryByUserName(name);
	}

}
