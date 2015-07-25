package com.twocore.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 * @author chenqidou
 * @date 2015/7/11
 * @description 订单和产品的关联表模型，主要是它们之间是多对多的关系，因此生成的中间表
 * */
@Entity
@Table(name = "t_order_product_relation")
public class OrderProductModel {

	@Id
	@Column(name = "order_product_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int orderProductId;
	@Column(name = "order_id")
	public int orderId;

	@Column(name = "num")
	public int num;
	@Column(name = "size")
	public String size;// 尺寸
	@Column(name = "color")
	public String color;// 颜色
	@Column(name = "status")
	public int status;
	@OneToOne(targetEntity = ProductModel.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "product_id", referencedColumnName = "product_id", unique = true)
	private ProductModel product;

	public int getOrderProductId() {
		return orderProductId;
	}

	public void setOrderProductId(int orderProductId) {
		this.orderProductId = orderProductId;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public ProductModel getProduct() {
		return product;
	}

	public void setProduct(ProductModel product) {
		this.product = product;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
}
