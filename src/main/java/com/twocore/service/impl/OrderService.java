package com.twocore.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.twocore.dao.IOrderDAO;
import com.twocore.model.OrderModel;
import com.twocore.service.IOrderService;

@Service("orderService")
public class OrderService implements IOrderService {
	@Resource(name = "orderDao")
	IOrderDAO iOrderDAO;

	@Override
	public void insertOrder(OrderModel model) {
		iOrderDAO.insert(model);
	}

	@Override
	public OrderModel queryByid(int id) {
		return iOrderDAO.queryByOrderId(id);
	}

	@Override
	public void update(OrderModel model) {
		iOrderDAO.update(model);
	}

	@Override
	public OrderModel queryByUserId(int userId) {
		// TODO Auto-generated method stub
		return iOrderDAO.queryByUserId(userId);
	}
}
