package com.twocore.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.twocore.model.AddressModel;
import com.twocore.service.IAddressService;

@Scope("prototype")
// singleton为单例模式
@Controller
@RequestMapping("/address")
public class AddressController {
	@Resource(name = "addressService")
	IAddressService addressService;

	@RequestMapping(value = "/list", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	public @ResponseBody
	List<AddressModel> getAddress(@RequestParam("userId") int userId) {
		return addressService.getAddressByUserId(userId);
	}

	@RequestMapping(value = "/select", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	public @ResponseBody
	AddressModel selectAddress(@RequestParam("addressId") int addressId,
			@RequestParam("userId") int userId) {
		// 根据userid查出所有地址
		List<AddressModel> addresses = addressService
				.getAddressByUserId(userId);
		// 根据addressId将该地址设为默认
		AddressModel defaultAddress = null;
		// 将其余的都设为非默认
		for (AddressModel addressModel : addresses) {
			if (addressModel.addressId == addressId) {
				addressModel.isDefaut = 0;
				defaultAddress = addressModel;
			} else {
				addressModel.isDefaut = -1;
			}
			addressService.update(addressModel);
		}
		return defaultAddress;
	}
}
