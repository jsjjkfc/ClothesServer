package com.twocore.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Formula;

/**
 * @author chenqidou
 * @date 2015/7/11
 * @description 用户订单模型
 * */
@Entity
@Table(name = "t_order")
public class OrderModel {
	@Id
	@Column(name = "order_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int orderId;// 订单号
	@Column(name = "user_id")
	public int userId;// 用户信息
	@Column(name = "status")
	public int status;// 0：下单 1：退货  2:审核  3：货送出  4：完成
	@Column(name = "time")
	public String time;// 下单时间

	@OneToMany(targetEntity = OrderProductModel.class)
	@JoinColumn(name = "order_id", referencedColumnName = "order_id")
	private Set<OrderProductModel> OrderProductes = new HashSet<OrderProductModel>();

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public Set<OrderProductModel> getOrderProductes() {
		return OrderProductes;
	}

	public void setOrderProductes(Set<OrderProductModel> orderProductes) {
		OrderProductes = orderProductes;
	}

}
