package com.twocore.dao;

import com.twocore.model.AttributeModel;

public class AttributeDAO extends GenericDAO<AttributeModel> implements IAttributeDAO {

	public AttributeDAO(Class<AttributeModel> clazz) {
		super(clazz);
		
	}


}
