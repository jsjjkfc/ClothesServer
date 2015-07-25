package com.twocore.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.twocore.model.ProductModel;

@Repository("productDao")
@Transactional
// 这个类需要用@Repository注解，声明为spring bean
public class ProductDAO extends GenericDAO<ProductModel> implements IProductDAO {

	public ProductDAO() {
		super(ProductModel.class);
	}

	@Override
	public ProductModel queryByName(String productName) {
		String hql = "from ProductModel p where p.name = ?";
		return queryForObject(hql, new Object[] { productName });
	}

	@Override
	public List<ProductModel> queryByNameList(String productName) {
		String hql = "from ProductModel p where p.name = ?";
		return queryForList(hql, new Object[] { productName });
	}

	@Override
	public List<ProductModel> queryBySupplier(int supplierid) {
		String hql = "from ProductModel p where p.supplierId = ?";
		return queryForList(hql, new Object[] { supplierid });
	}

	public List<ProductModel> pageQueryAllSupplier(final int start,
			final int recordNum) {
		String hql = "from ProductModel";
		return pageQuery(hql, new Object[] {}, start, recordNum);
	}

	@Override
	public ProductModel queryById(int id) {
		String hql = "from ProductModel p where p.productId = ?";
		return queryForObject(hql, new Object[] { id });
	}

	@Override
	public void deleteById(int id) {
		String hql = "delete from ProductModel p where p.productId = ?";
		delete(hql, new Object[] { id });
	}

}
