package com.twocore.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.twocore.model.TypeModel;
import com.twocore.service.IProductTypeService;

@Repository("productTypeDao")
@Transactional
public class ProductTypeDAO extends GenericDAO<TypeModel> implements
		IProductTypeDAO {
	public ProductTypeDAO() {
		super(TypeModel.class);
	}

	@Override
	public List<TypeModel> getAllTypes() {
		return queryAll();
	}

	@Override
	public TypeModel queryById(int id) {
		String hql = "from TypeModel t where t.typeId = ?";
		return queryForObject(hql, new Object[] { id });
	}

	@Override
	public List<TypeModel> pageQueryAllTypes(int start, int recordNum) {
		String hql = "from TypeModel";
		return pageQuery(hql, new Object[] {}, start, recordNum);
	}

}
