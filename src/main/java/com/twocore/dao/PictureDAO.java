package com.twocore.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.twocore.model.PicModel;

@Repository("pictureDao")
@Transactional
public class PictureDAO extends GenericDAO<PicModel> implements IPictureDAO {

	public PictureDAO() {
		super(PicModel.class);
	}

	@Override
	public PicModel queryById(int id) {
		String hql = "from PicModel p where p.id = ?";
		return queryForObject(hql, new Object[] { id });
	}

	@Override
	public List<PicModel> queryAllPic() {
		return queryAll();
	}

	@Override
	public List<PicModel> queryByPath(String path) {
		String hql = "from PicModel p where p.picPath = ?";
		return queryForList(hql, new Object[] { path });
	}

}
