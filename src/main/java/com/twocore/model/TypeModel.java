package com.twocore.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;

/**
 * @author chenqidou
 * @date 2015/6/18
 * @description 类型实体类
 * */
@Entity
@Table(name = "t_type")
public class TypeModel {
	@Id
	@Column(name = "type_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int typeId;
	@Column(name = "type_name")
	private String name;

	@OneToMany(targetEntity = ProductModel.class,fetch=FetchType.EAGER)
	@JoinColumn(name = "type_id", referencedColumnName = "type_id")
	@OrderBy(value="product_id")
	private Set<ProductModel> productList = new HashSet<ProductModel>();
	public int getTypeId() {
		return typeId;
	}

	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set<ProductModel> getProductList() {
		return productList;
	}

	public void setProductList(Set<ProductModel> productList) {
		this.productList = productList;
	}
}
