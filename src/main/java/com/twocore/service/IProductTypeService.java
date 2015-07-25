package com.twocore.service;

import java.util.List;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.twocore.model.TypeModel;

@Transactional(readOnly = false, propagation = Propagation.REQUIRED)
public interface IProductTypeService {
	List<TypeModel> getTypes();

	List<TypeModel> getTypes(int start, int recordNum);

	TypeModel getTypeById(int id);

	void addType(TypeModel model);

	void deleteType(TypeModel model);

	void updateType(TypeModel model);

	Integer getTypeCount();

}
