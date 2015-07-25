package com.twocore.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * @author chenqidou
 * @date 2015/7/11
 * @description 产品信息属性模型
 * */
@Entity(name = "t_product_attribute_relation")
public class ProductAttributeModel {
	@Id
	@Column(name = "product_attribute_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int id;
	@Column(name = "product_id")
	public int productId;
	@Column(name = "attribute_id")
	public int attributeId;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public int getAttributeId() {
		return attributeId;
	}

	public void setAttributeId(int attributeId) {
		this.attributeId = attributeId;
	}
}
