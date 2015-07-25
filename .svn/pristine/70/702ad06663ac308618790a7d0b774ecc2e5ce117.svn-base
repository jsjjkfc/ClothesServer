package com.twocore.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;



import com.fasterxml.jackson.annotation.JsonIgnore;

/**
 * @author chenqidou
 * @date 2015/6/18
 * @description 产品图片实体类
 * */
@Entity
@Table(name = "t_pic")
public class PicModel {

	@Id
	@Column(name = "pic_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "pic_path")
	private String picPath;
	

	@JsonIgnore
	@ManyToOne(targetEntity=ProductModel.class)
	@JoinColumn(name = "product_id",referencedColumnName="product_id")
	private ProductModel productModel;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPicPath() {
		return picPath;
	}

	public void setPicPath(String picPath) {
		this.picPath = picPath;
	}

	public ProductModel getProductModel() {
		return productModel;
	}

	public void setProductModel(ProductModel productModel) {
		this.productModel = productModel;
	}

}
