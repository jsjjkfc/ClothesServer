package com.twocore.service;

import java.util.List;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.twocore.model.AddressModel;

@Transactional(readOnly = false, propagation = Propagation.REQUIRED)
public interface IAddressService {
	List<AddressModel> getAddressByUserId(int userId);

	void update(AddressModel addressModel);
}
