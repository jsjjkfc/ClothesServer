package com.twocore.service.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.twocore.bean.resp.RespProductData;
import com.twocore.dao.IProductDAO;
import com.twocore.dao.ISupplierDAO;
import com.twocore.dao.ProductDAO;
import com.twocore.dao.SupplierDAO;
import com.twocore.model.PicModel;
import com.twocore.model.ProductModel;
import com.twocore.service.IProductService;

@Service("productService")
public class ProductService implements IProductService {
	@Resource(name = "productDao")
	private IProductDAO productDAO;
	@Resource(name = "supplierDao")
	private ISupplierDAO supplierDao;

	@Override
	public void addProduct(ProductModel model) {
		productDAO.insert(model);
	}

	@Override
	public List<RespProductData> getProducts() {
		List<ProductModel> models = productDAO.queryAll();
		List<RespProductData> respProductDatas = new ArrayList<RespProductData>();
		for (ProductModel productModel : models) {
			RespProductData data = new RespProductData();
			data.setName(productModel.getName());
			data.setDesc(productModel.getDesc());
			if (productModel.getPicPathes().size() > 0) {
				// 此处要验证
				Iterator<PicModel> it = productModel.getPicPathes().iterator();
				List<String> pathes = new ArrayList<String>();
				while (it.hasNext()) {
					pathes.add(it.next().getPicPath());
				}
				data.setPicPathes(pathes);
			}
			data.setPrice(productModel.getPrice());
			data.setProductId(productModel.getProductId());
			data.setSalePrice(productModel.getSalePrice());
		//	int id = productModel.getSupplierId();
			data.setSupplier(productModel.getSupplier());
			data.setType(productModel.getType());
			respProductDatas.add(data);
		}
		return respProductDatas;
	}

	@Override
	public void updateProduct(ProductModel model) {
		productDAO.update(model);
	}

	// 分页查询
	@Override
	public List<RespProductData> getProducts(int start, int recordNum) {

		List<ProductModel> models = productDAO.pageQueryAllSupplier(start,
				recordNum);
		List<RespProductData> respProductDatas = new ArrayList<RespProductData>();
		for (ProductModel productModel : models) {
			RespProductData data = new RespProductData();
			data.setName(productModel.getName());
			data.setDesc(productModel.getDesc());
			if (productModel.getPicPathes().size() > 0) {
				// 此处要验证
				Iterator<PicModel> it = productModel.getPicPathes().iterator();
				List<String> pathes = new ArrayList<String>();
				while (it.hasNext()) {
					pathes.add(it.next().getPicPath());
				}
				data.setPicPathes(pathes);
			}
			data.setPrice(productModel.getPrice());
			data.setProductId(productModel.getProductId());
			data.setSalePrice(productModel.getSalePrice());
		//	int id = productModel.getSupplierId();
			data.setSupplier(productModel.getSupplier());
			data.setType(productModel.getType());
			respProductDatas.add(data);
		}
		return respProductDatas;

	}

	@Override
	public Integer getProductCount() {
		return productDAO.queryCount();
	}

	@Override
	public ProductModel getProductById(int id) {
		return productDAO.queryById(id);
	}

	@Override
	public void deleteProduct(ProductModel model) {
		productDAO.delete(model);
	}

	@Override
	public RespProductData getResProductById(int id) {
		ProductModel productModel = productDAO.queryById(id);

		RespProductData data = new RespProductData();
		data.setName(productModel.getName());
		data.setDesc(productModel.getDesc());
		if (productModel.getPicPathes().size() > 0) {
			// 此处要验证
			Iterator<PicModel> it = productModel.getPicPathes().iterator();
			List<String> pathes = new ArrayList<String>();
			while (it.hasNext()) {
				pathes.add(it.next().getPicPath());
			}
			data.setPicPathes(pathes);
		}
		data.setPrice(productModel.getPrice());
		data.setProductId(productModel.getProductId());
		data.setSalePrice(productModel.getSalePrice());
	//	int suid = productModel.getSupplierId();
		data.setSupplier(productModel.getSupplier());
		data.setType(productModel.getType());

		return data;
	}

}
