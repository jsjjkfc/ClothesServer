package com.twocore.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.twocore.bean.resp.AttributeBean;
import com.twocore.model.AddressModel;
import com.twocore.model.OrderModel;
import com.twocore.model.OrderProductModel;
import com.twocore.model.ProductModel;
import com.twocore.model.UserModel;
import com.twocore.service.IAddressService;
import com.twocore.service.IOrderProductService;
import com.twocore.service.IOrderService;
import com.twocore.service.IProductService;
import com.twocore.utils.JacksonUtil;

@Scope("prototype")
// singleton为单例模式
@Controller
@RequestMapping("/settlement")
// 订单处理
public class SettlementController {
	@Resource(name = "orderProductService")
	IOrderProductService orderProductService;
	@Resource(name = "orderService")
	IOrderService orderService;
	@Resource(name = "productService")
	IProductService productService;
	@Resource(name = "addressService")
	IAddressService addressService;

	// 订单结算
	// @RequestMapping(value = "/onaccount", method = RequestMethod.GET)
	// public ModelAndView toSettlement(@RequestParam("orderid") String orderid,
	// @RequestParam("totalMoney") String totalMoney,
	// @RequestParam("saveMoney") String saveMoney, HttpSession httpSession) {
	// Map<String, Object> data = new HashMap<String, Object>();
	// if (httpSession.getAttribute("uname") != null) {
	// data.put("uname", httpSession.getAttribute("uname"));
	// data.put("orderid", orderid);
	// data.put("totalMoney", totalMoney);
	// data.put("saveMoney", saveMoney);
	// // 跳转订单结算页
	// return new ModelAndView("page/settlement_order", data);
	// } else {
	// return new ModelAndView("page/login");
	// }
	//
	// }
	// 订单结算
	@RequestMapping(value = "/onaccount", method = RequestMethod.POST)
	public ModelAndView toSettlement(HttpServletRequest request,
			HttpServletResponse response, HttpSession httpSession) {
		String addressId = request.getParameter("addressId");
		String orderData = request.getParameter("orderData");
		try {
			// OrderProductModel orderProductModel = JacksonUtil.readValue(
			// orderData, OrderProductModel.class);
			List<OrderProductModel> orderProductModels = new ArrayList<OrderProductModel>();
			orderProductModels.addAll(Arrays.asList(JacksonUtil.readValue(
					orderData, OrderProductModel[].class)));
			UserModel user = (UserModel) httpSession.getAttribute("user");
			if (user != null) {
				OrderModel orderModel = new OrderModel();
				orderModel.setStatus(-2);
				orderModel.setTime(new Date().toString());
				orderModel.setUserId(user.getUserId());
				Set<OrderProductModel> orderProductes = new HashSet<OrderProductModel>();
				for (OrderProductModel model : orderProductModels) {
					orderProductes.add(model);
				}
				orderModel.setOrderProductes(orderProductes);
				orderModel.setAddressId(Integer.parseInt(addressId));
				// insert order
				orderService.insertOrder(orderModel);
				Map<String, Object> data = new HashMap<String, Object>();
				data.put("orderId", orderModel.getOrderId());
				return new ModelAndView("/page/settlement_order", data);
			} else {
				return new ModelAndView("/page/login");
			}
		} catch (Exception e) {
			Map<String, Object> data = new HashMap<String, Object>();
			data.put("errorMsg", e.getMessage());
			return new ModelAndView("/page/error", data);
		}
	}

	// 订单结算
	@RequestMapping(value = "/onpay", method = RequestMethod.GET)
	public ModelAndView toPay(@RequestParam("orderid") String orderid,
			HttpSession httpSession) {
		try {
			UserModel user = (UserModel) httpSession.getAttribute("user");
			if (user != null) {
				OrderModel orderModel = orderService.queryByid(Integer
						.parseInt(orderid));
				// 将订单设为已支付
				orderModel.setStatus(-1);
				orderService.update(orderModel);
				Map<String, Object> data = new HashMap<String, Object>();
				return new ModelAndView("/page/pay_result", data);
			} else {
				return new ModelAndView("/page/login");
			}
		} catch (Exception e) {
			Map<String, Object> data = new HashMap<String, Object>();
			data.put("errorMsg", e.getMessage());
			return new ModelAndView("/page/error", data);
		}
	}

	// 生成订单(立即购买跳转而来)
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView addordered(@RequestParam("proid") String proid,
			@RequestParam("count") String count,
			@RequestParam("attributes") String attributes,
			HttpSession httpSession) {
		try {
			AttributeBean attrBean = JacksonUtil.readValue(attributes,
					AttributeBean.class);
			UserModel user = (UserModel) httpSession.getAttribute("user");
			if (user != null) {
				ProductModel productModel = productService
						.getProductById(Integer.parseInt(proid));
				OrderProductModel orderProductModel = new OrderProductModel();
				orderProductModel.setProduct(productModel);
				orderProductModel.setNum(Integer.parseInt(count));
				setAttribute(attrBean, orderProductModel);// 设置购买属性
				// 取得默认的收货地址
				AddressModel addressModel = new AddressModel();
				List<AddressModel> addressModels = addressService
						.getAddressByUserId(user.getUserId());
				for (AddressModel addModel : addressModels) {
					if (addModel.getIsDefaut() == 0) {
						addressModel = addModel;
					}
				}
				// 跳转处理
				Map<String, Object> data = new HashMap<String, Object>();
				data.put("userId", user.getUserId());
				data.put("proid", proid);
				data.put("address", addressModel);
				String orderproduct = JacksonUtil.toJSon(orderProductModel);
				data.put("orderproduct", orderproduct);
				return new ModelAndView("/page/confirm_order2", data);
			} else {
				return new ModelAndView("/page/login");
			}

		} catch (Exception e) {
			Map<String, Object> data = new HashMap<String, Object>();
			data.put("errorMsg", e.getMessage());
			return new ModelAndView("/page/error", data);
		}

	}

	// 生成订单
	@RequestMapping(value = "/onordered", method = RequestMethod.GET)
	public ModelAndView toordered(@RequestParam("orderid") String orderid,
			HttpSession httpSession) {
		Map<String, Object> data = new HashMap<String, Object>();
		if (httpSession.getAttribute("uname") != null) {
			data.put("uname", httpSession.getAttribute("uname"));
			data.put("orderid", orderid);
			// 取得订单内所有orderproduct对象
			List<OrderProductModel> orderProductModels = orderProductService
					.queryByOrderid(Integer.parseInt(orderid));
			// 将关联此单的所有orderproduct对象status置为1
			for (OrderProductModel model : orderProductModels) {
				model.setStatus(1);
				orderProductService.updateOrderProduct(model);
			}
			// 将此单status置为1
			OrderModel orderModel = orderService.queryByid(Integer
					.parseInt(orderid));
			orderModel.setStatus(1);
			orderService.update(orderModel);
			// 跳转订单结算页
			return new ModelAndView("page/settlement_success", data);
		} else {
			return new ModelAndView("page/login");
		}

	}

	public void setAttribute(AttributeBean attrBean,
			OrderProductModel orderProductModel) {
		if (attrBean.getA() != null) {
			orderProductModel.setColor(attrBean.getA());
		}
		if (attrBean.getB() != null) {
			orderProductModel.setSize(attrBean.getB());
		}
		if (attrBean.getC() != null) {
			orderProductModel.setOther0(attrBean.getC());
		}
		if (attrBean.getD() != null) {
			orderProductModel.setOther1(attrBean.getD());
		}
		if (attrBean.getE() != null) {
			orderProductModel.setOther1(attrBean.getE());
		}

	}
}
