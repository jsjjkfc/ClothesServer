package com.twocore.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.twocore.model.UserModel;

@Repository("userDao")
@Transactional
public class UserDAO extends GenericDAO<UserModel> implements IUserDAO {

	public UserDAO() {
		super(UserModel.class);
	}

	@Override
	public UserModel queryByWeId(String id) {
		String hql = "from UserModel u where u.wechatOpenId = ?";
		return queryForTopObject(hql, new Object[] { id });
	}

	@Override
	public int queryUidByWeID(String id) {
		String hql = "from UserModel u where u.wechatOpenId = ?";
		UserModel model = queryForTopObject(hql, new Object[] { id });
		return model.userId;
	}

	@Override
	public UserModel queryByUserName(String name) {
		String hql = "from UserModel u where u.username= ?";
		UserModel model = queryForTopObject(hql, new Object[] { name });
		return model;
	}

}
