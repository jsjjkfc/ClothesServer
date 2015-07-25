package com.twocore.dao;

import java.util.List;

import com.twocore.model.PicModel;

public interface IPictureDAO extends IGenericDAO<PicModel> {
	public PicModel queryById(int id);

	public List<PicModel> queryAllPic();

	public List<PicModel> queryByPath(String path);
}
