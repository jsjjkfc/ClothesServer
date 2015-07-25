package com.twocore.dao;

import com.twocore.model.UserModel;

public interface IUserDAO extends IGenericDAO<UserModel> {
	/**
	 * 根据微信账号查询
	 */
	UserModel queryByWeId(String id);

	/**
	 * 根据微信账号查询userid
	 */
	int queryUidByWeID(String id);
	
	UserModel queryByUserName(String name);
}
