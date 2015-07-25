package com.twocore.service;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.twocore.model.UserModel;

@Transactional(readOnly = false, propagation = Propagation.REQUIRED)
public interface IUserService {
	UserModel queryByWeid(String id);
	UserModel queryByName(String name);
	int queryUidByWeid(String id);
}
