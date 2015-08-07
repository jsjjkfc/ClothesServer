package com.twocore.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.twocore.model.AddressModel;
import com.twocore.model.AttributeModel;

@Repository("addressDao")
@Transactional
public class AddressDAO extends GenericDAO<AddressModel> implements IAddressDAO {

	public AddressDAO() {
		super(AddressModel.class);
	}

	@Override
	public List<AddressModel> getListByUserId(int userId) {
		String hql = "from AddressModel o where o.userId = ? order by o.isDefaut desc";// 获取未结算的用户订单
		return queryForList(hql, new Object[] { userId });
	}

}
