package com.twocore.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.twocore.dao.ISupplierDAO;
import com.twocore.model.SupplierModel;
import com.twocore.service.ISupplierService;

@Service("supplierService")
public class SupplierService implements ISupplierService {
	@Resource(name = "supplierDao")
	ISupplierDAO supplierDao;

	@Override
	public List<SupplierModel> getAllSupplier() {
		return supplierDao.getAllSuppliers();
	}

	@Override
	public List<SupplierModel> getSuppliers(int start, int recordNum) {
		return supplierDao.pageQueryAllSupplier(start, recordNum);
	}

	@Override
	public Integer getSupplierCount() {
		return supplierDao.queryCount();
	}

	@Override
	public void addSupplier(SupplierModel model) {
		supplierDao.insert(model);
	}

	@Override
	public SupplierModel queryById(int id) {
		return supplierDao.queryByid(id);
	}

	@Override
	public void updateSupplier(SupplierModel model) {
		supplierDao.update(model);
	}

	@Override
	public void deleteSupplier(SupplierModel supplierModel) {
		supplierDao.delete(supplierModel);
	}

}
