package com.twocore.service.impl;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

import com.twocore.dao.IProductDAO;
import com.twocore.dao.IProductTypeDAO;
import com.twocore.model.ProductModel;

@Service("testService")
public class ZTestService {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		 ApplicationContext factory=new  ClassPathXmlApplicationContext("classpath:spring*.xml");
		 IProductDAO service= (IProductDAO) factory.getBean("productDao");
		 IProductTypeDAO typeDao=(IProductTypeDAO) factory.getBean("productTypeDao");
	/*	List<TypeModel>list= typeDao.queryAll();
		 for(TypeModel e:list){
			 Set<ProductModel> set= e.getProductList();
			 for(ProductModel product:set){
				 System.out.println(e.getName()+":"+product.getName());
			 }
		 }*/
		 List<ProductModel>list =service.queryAll();
		 for(int i=0;i<list.size();i++){
			// System.out.println( list.get(i).getType().getName());
			/* Set<AttributeModel> productAttributes= list.get(i).getProductAttributes();
			 for(AttributeModel attribute:productAttributes){
				 System.out.println( attribute.getValue());
			 }
			 */
			 System.out.println(list.get(i).getSupplier().getDesc());
		 }
	
	/*	 ProductModel product= new ProductModel();
		 //类型级联
		 TypeModel type=new TypeModel();
		 type.setTypeId(1);
		 type.setName("ss");
		 product.setType(type);
		 product.setSupplierId(1);
		 product.setProductId(89);
		 product.setDesc("73");
		 product.setPrice(44);
		 //图片路径级联
		 Set<PicModel> picPathes = new HashSet<PicModel>();
		 PicModel p=new PicModel();
		 p.setPicPath("sss");
		 p.setProductModel(product);
		 picPathes.add(p);
		 product.setPicPathes(picPathes);
		 //产品属性级联
		 Set<AttributeModel> productAttributes=new HashSet<AttributeModel>();
		 AttributeModel attr=new AttributeModel();
		 attr.setId(1);//设定已经有的属性
		 productAttributes.add(attr);
		 product.setProductAttributes(productAttributes);*/
		 
	//	 service.insert(product);
	//	 service.update(product);
	//	 service.delete(product);
		
		/* IPictureDAO picDao= (IPictureDAO) factory.getBean("pictureDao");
		 PicModel p1=new PicModel();
		 p1.setId(79);
		 picDao.delete(p1);*/
		
	}

}
