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

	@Override
	public OrderModel queryByUserId(int userId) {
		String hql = "from OrderModel o where o.userId = ? and o.status=0";//获取未结算的用户订单
		return queryForObject(hql, new Object[] { userId });
	}

}
