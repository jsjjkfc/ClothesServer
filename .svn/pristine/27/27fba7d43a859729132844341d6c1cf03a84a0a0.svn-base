package com.twocore.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.twocore.dao.IAddressDAO;
import com.twocore.model.AddressModel;
import com.twocore.service.IAddressService;

@Service("addressService")
public class AddressService implements IAddressService {
	@Resource(name = "addressDao")
	IAddressDAO addressDao;

	@Override
	public List<AddressModel> getAddressByUserId(int userId) {
		return addressDao.getListByUserId(userId);
	}

	@Override
	public void update(AddressModel addressModel) {
		addressDao.update(addressModel);
	}

}
