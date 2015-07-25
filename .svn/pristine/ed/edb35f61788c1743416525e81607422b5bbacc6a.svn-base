package com.twocore.service;

import java.util.List;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.twocore.bean.resp.RespProductData;
import com.twocore.model.SupplierModel;

@Transactional(readOnly = false, propagation = Propagation.REQUIRED)
public interface ISupplierService {
	List<SupplierModel> getAllSupplier();

	// 分页查询
	List<SupplierModel> getSuppliers(int start, int recordNum);

	// 查询总数
	Integer getSupplierCount();

	void addSupplier(SupplierModel model);

	SupplierModel queryById(int id);

	void updateSupplier(SupplierModel model);

	void deleteSupplier(SupplierModel supplierModel);
}
