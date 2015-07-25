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

/**
 * @author chenqidou
 * @date 2015/7/11
 * @description 用户信息模型
 * */
@Entity
@Table(name = "t_user")
public class UserModel {
	@Id
	@Column(name = "user_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int userId;// 用户唯一识别号
	@Column(name = "username")
	public String username;// 用户名
	@Column(name = "password")
	public String password;// 密码
	@Column(name = "type")
	public int type;// 用户类型 0:管理员 1：卖家 2：普通用户
	@Column(name = "wechat_open_id")
	public String wechatOpenId;// 用户微信的openID,每个用户是唯一识别的
	@Column(name = "telephone")
	public String telephone;// 用户电话信息

	@OneToMany(targetEntity = AddressModel.class)
	@JoinColumn(name = "user_id", referencedColumnName = "user_id")
	private Set<AddressModel> addresses = new HashSet<AddressModel>();

	@OneToMany(targetEntity = OrderModel.class)
	@JoinColumn(name = "user_id", referencedColumnName = "user_id")
	private Set<OrderModel> Orderes = new HashSet<OrderModel>();

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getWechatOpenId() {
		return wechatOpenId;
	}

	public void setWechatOpenId(String wechatOpenId) {
		this.wechatOpenId = wechatOpenId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public Set<AddressModel> getAddresses() {
		return addresses;
	}

	public void setAddresses(Set<AddressModel> addresses) {
		this.addresses = addresses;
	}

	public Set<OrderModel> getOrderes() {
		return Orderes;
	}

	public void setOrderes(Set<OrderModel> orderes) {
		Orderes = orderes;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
}
