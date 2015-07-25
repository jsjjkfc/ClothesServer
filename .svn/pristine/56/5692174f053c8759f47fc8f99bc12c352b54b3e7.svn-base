package com.twocore.service.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.twocore.dao.IPictureDAO;
import com.twocore.dao.PictureDAO;
import com.twocore.model.PicModel;
import com.twocore.service.IPictureService;

@Service("pictureService")
public class PictureService implements IPictureService {
	@Resource(name = "pictureDao")
	IPictureDAO pictureDao;

	@Override
	public PicModel getPicById(int id) {
		return pictureDao.queryById(id);
	}

	@Override
	public List<PicModel> getAllPicPath() {
		return pictureDao.queryAllPic();
	}

	@Override
	public void insertPic(PicModel picModel) {
		pictureDao.insert(picModel);
	}

	@Override
	public void delPicByPath(String path) {
		List<PicModel> pics = pictureDao.queryByPath(path);
		for (int i = 0; i < pics.size(); i++) {
			pics.get(i).getProductModel().getPicPathes().remove(pics.get(i));
			pics.get(i).setProductModel(null);
			pictureDao.delete(pics.get(i));
		}
	}

}
