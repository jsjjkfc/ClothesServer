package com.twocore.service;

import java.util.List;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.twocore.bean.resp.RespProductData;
import com.twocore.model.ProductModel;

@Transactional(readOnly = false, propagation = Propagation.REQUIRED)
public interface IProductService {
	void addProduct(ProductModel model);

	void updateProduct(ProductModel model);

	List<RespProductData> getProducts();

	RespProductData getResProductById(int id);

	List<RespProductData> getProducts(int start, int recordNum);

	Integer getProductCount();

	ProductModel getProductById(int id);

	void deleteProduct(ProductModel model);
}
