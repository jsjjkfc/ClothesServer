package com.twocore.dao;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.twocore.model.OrderProductModel;

@Repository("orderProductDAO")
@Transactional
public class OrderProductDAO extends GenericDAO<OrderProductModel> implements
		IOrderProductDAO {
	public OrderProductDAO() {
		super(OrderProductModel.class);
	}

	@Override
	public List<OrderProductModel> queryAllUngenerated() {
		String hql = "from OrderProductModel o where o.status = 0";
		return queryForList(hql, new Object[] {});
	}

	@Override
	public List<OrderProductModel> queryByOrderid(int id) {
		String hql = "from OrderProductModel o where o.orderId = ?";
		return queryForList(hql, new Object[] { id });
	}

}
