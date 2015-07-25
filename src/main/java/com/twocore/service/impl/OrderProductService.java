package com.twocore.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.twocore.dao.IOrderProductDAO;
import com.twocore.model.OrderProductModel;
import com.twocore.service.IOrderProductService;

@Service("orderProductService")
public class OrderProductService implements IOrderProductService {
	@Resource(name = "orderProductDAO")
	IOrderProductDAO iOrderProductDAO;

	@Override
	public void insertOrderProduct(OrderProductModel model) {
		iOrderProductDAO.insert(model);
	}

	@Override
	public List<OrderProductModel> queryAllUngenerted() {
		return iOrderProductDAO.queryAllUngenerated();
	}

	@Override
	public List<OrderProductModel> queryByOrderid(int id) {
		return iOrderProductDAO.queryByOrderid(id);
	}

	@Override
	public void updateOrderProduct(OrderProductModel model) {
		iOrderProductDAO.update(model);
	}
}
