package com.twocore.dao;

import com.twocore.model.OrderProductModel;
import java.util.List;

public interface IOrderProductDAO extends IGenericDAO<OrderProductModel> {
	// 查找所有未生成订单的订单商品bean
	List<OrderProductModel> queryAllUngenerated();

	List<OrderProductModel> queryByOrderid(int id);
}
