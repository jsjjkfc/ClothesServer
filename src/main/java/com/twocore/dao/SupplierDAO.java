package com.twocore.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.twocore.model.SupplierModel;

@Repository("supplierDao")
@Transactional
public class SupplierDAO extends GenericDAO<SupplierModel> implements
		ISupplierDAO {

	public SupplierDAO() {
		super(SupplierModel.class);
	}

	public List<SupplierModel> getAllSuppliers() {
		return queryAll();
	}

	public SupplierModel querySupplierById(int id) {
		String hql = "from SupplierModel p where p.supplierId = ?";
		return queryForObject(hql, new Object[] { id });
	}

	@Override
	public List<SupplierModel> pageQueryAllSupplier(int start, int recordNum) {
		String hql = "from SupplierModel";
		return pageQuery(hql, new Object[] {}, start, recordNum);
	}

	@Override
	public SupplierModel queryByid(int id) {
		String hql = "from SupplierModel p where p.supplierId = ?";
		return queryForObject(hql, new Object[] { id });
	}

}
