package com.twocore.dao;

import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.twocore.model.OrderModel;

@Repository("orderDao")
@Transactional
public class OrderDAO extends GenericDAO<OrderModel> implements IOrderDAO {

	public OrderDAO() {
		super(OrderModel.class);
	}

	@Override
	public OrderModel queryByOrderId(int id) {
		String hql = "from OrderModel o where o.orderId = ?";
		return queryForObject(hql, new Object[] { id });
	}

}
