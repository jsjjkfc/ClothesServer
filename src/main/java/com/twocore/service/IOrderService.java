package com.twocore.service;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.twocore.model.OrderModel;

@Transactional(readOnly = false, propagation = Propagation.REQUIRED)
public interface IOrderService {
	void insertOrder(OrderModel model);

	OrderModel queryByid(int id);
	
	OrderModel queryByUserId(int userId);

	void update(OrderModel model);
}
