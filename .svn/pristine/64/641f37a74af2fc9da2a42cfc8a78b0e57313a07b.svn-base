package com.twocore.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.twocore.model.OrderModel;
import com.twocore.model.OrderProductModel;
import com.twocore.service.IOrderProductService;
import com.twocore.service.IOrderService;

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

	// 订单结算
	@RequestMapping(value = "/onaccount", method = RequestMethod.GET)
	public ModelAndView toSettlement(@RequestParam("orderid") String orderid,
			@RequestParam("totalMoney") String totalMoney,
			@RequestParam("saveMoney") String saveMoney, HttpSession httpSession) {
		Map<String, Object> data = new HashMap<String, Object>();
		if (httpSession.getAttribute("uname") != null) {
			data.put("uname", httpSession.getAttribute("uname"));
			data.put("orderid", orderid);
			data.put("totalMoney", totalMoney);
			data.put("saveMoney", saveMoney);
			// 跳转订单结算页
			return new ModelAndView("page/settlement_order", data);
		} else {
			return new ModelAndView("page/login");
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
}
