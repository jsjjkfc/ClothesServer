package com.twocore.service;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;
import com.twocore.model.OrderProductModel;

@Transactional(readOnly = false, propagation = Propagation.REQUIRED)
public interface IOrderProductService {
	void insertOrderProduct(OrderProductModel model);

	List<OrderProductModel> queryAllUngenerted();

	List<OrderProductModel> queryByOrderid(int id);

	void updateOrderProduct(OrderProductModel model);
}
