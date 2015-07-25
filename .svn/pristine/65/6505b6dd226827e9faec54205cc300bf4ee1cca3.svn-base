package com.twocore.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.twocore.dao.IProductTypeDAO;
import com.twocore.dao.ProductTypeDAO;
import com.twocore.model.TypeModel;
import com.twocore.service.IProductTypeService;

@Service("productTypeService")
public class ProductTypeService implements IProductTypeService {
	@Resource(name = "productTypeDao")
	IProductTypeDAO productTypeDao;

	@Override
	public List<TypeModel> getTypes() {
		return productTypeDao.getAllTypes();
	}

	@Override
	public TypeModel getTypeById(int id) {
		return productTypeDao.queryById(id);
	}

	@Override
	public void addType(TypeModel model) {
		productTypeDao.insert(model);
	}

	@Override
	public void deleteType(TypeModel model) {
		productTypeDao.delete(model);
	}

	@Override
	public void updateType(TypeModel model) {
		productTypeDao.update(model);
	}

	@Override
	public List<TypeModel> getTypes(int start, int recordNum) {

		return productTypeDao.pageQueryAllTypes(start, recordNum);
	}

	@Override
	public Integer getTypeCount() {
		return productTypeDao.queryCount();
	}

}
