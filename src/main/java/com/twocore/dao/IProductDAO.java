package com.twocore.dao;

import java.util.List;
import java.util.Set;

import com.twocore.model.PicModel;
import com.twocore.model.ProductModel;

public interface IProductDAO extends IGenericDAO<ProductModel> {
	public ProductModel queryByName(String productName);

	public List<ProductModel> queryByNameList(String productName);

	public List<ProductModel> queryBySupplier(int supplierid);

	public ProductModel queryById(int id);

	public void deleteById(int id);

	public Integer queryCount();

	public List<ProductModel> pageQueryAllSupplier(final int start,
			final int recordNum);

}
