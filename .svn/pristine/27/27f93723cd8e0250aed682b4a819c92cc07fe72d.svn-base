package com.twocore.service;

import java.util.List;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.twocore.model.PicModel;

@Transactional(readOnly = false, propagation = Propagation.REQUIRED)
public interface IPictureService {
	PicModel getPicById(int id);

	List<PicModel> getAllPicPath();

	void insertPic(PicModel picModel);

	void delPicByPath(String path);

}
