package com.twocore.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.twocore.dao.IProductDAO;
import com.twocore.dao.IProductTypeDAO;
import com.twocore.dao.ISupplierDAO;
import com.twocore.model.TypeModel;
import com.twocore.service.IGoodListService;

@Service("goodListService")
public class GoodListService implements IGoodListService {
	@Resource(name = "supplierDao")
	ISupplierDAO supplierDao;
	@Resource(name = "productDao")
	IProductDAO productDao;
	@Resource(name="productTypeDao")
	IProductTypeDAO productTypeDao;

	/** 代码问题 */
	@Override
	@Transactional
	public List<TypeModel> getGoodList() {
		
		return productTypeDao.queryAll();
	}
}
