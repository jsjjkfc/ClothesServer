package com.twocore.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author chenqidou
 * @date 2015/6/18
 * @description 供应商与类别多对多关系的实体类
 * */
@Entity
@Table(name = "t_type")
public class SupplierTypeModel {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int supplierTypeId;
	private int supplierId;
	private int typeId;

	public int getSupplierTypeId() {
		return supplierTypeId;
	}

	public void setSupplierTypeId(int supplierTypeId) {
		this.supplierTypeId = supplierTypeId;
	}

	public int getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}

	public int getTypeId() {
		return typeId;
	}

	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}
}
