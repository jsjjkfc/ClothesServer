package com.twocore.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * @author chenqidou
 * @date 2015/7/25
 * @description 物品属性表
 */

@Entity(name="t_attribute")
public class AttributeModel {
	@Id
	@Column(name = "attribute_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int id;
	@Column(name="attribute_type")
	public String attributeType;
	@Column(name="value")
	public String value;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAttributeType() {
		return attributeType;
	}

	public void setAttributeType(String attributeType) {
		this.attributeType = attributeType;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}
}
