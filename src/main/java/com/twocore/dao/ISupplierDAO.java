package com.twocore.dao;

import java.util.List;

import com.twocore.model.ProductModel;
import com.twocore.model.SupplierModel;

public interface ISupplierDAO extends IGenericDAO<SupplierModel> {
	public List<SupplierModel> getAllSuppliers();

	public SupplierModel querySupplierById(int id);

	public List<SupplierModel> pageQueryAllSupplier(final int start,
			final int recordNum);

	public Integer queryCount();

	public SupplierModel queryByid(int id);
}
