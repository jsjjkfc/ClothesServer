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
import com.twocore.model.ProductModel;
import com.twocore.service.IOrderProductService;
import com.twocore.service.IOrderService;
import com.twocore.service.IProductService;
import com.twocore.service.IUserService;
import com.twocore.utils.JacksonUtil;

@Scope("prototype")
// singleton为单例模式
@Controller
@RequestMapping("/shoppingcart")
// 购物车
public class ShoppingCartController {
	@Resource(name = "orderProductService")
	IOrderProductService orderProductService;
	@Resource(name = "orderService")
	IOrderService orderService;
	@Resource(name = "userService")
	IUserService userService;
	@Resource(name = "productService")
	IProductService productService;

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public ModelAndView mainCart(@RequestParam("proid") String proid,
			HttpSession httpSession) {
		Map<String, Object> data = new HashMap<String, Object>();
		if (httpSession.getAttribute("uname") != null) {
			data.put("uname", httpSession.getAttribute("uname"));
			data.put("proid", proid);
			OrderProductModel orderProductModel = new OrderProductModel();
			// 跳转订单结算页
			return new ModelAndView("page/shopping_cart", data);
		} else {
			return new ModelAndView("page/login");
		}
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView addToCart(@RequestParam("proid") String proid,
			@RequestParam("count") String count, HttpSession httpSession) {
		Map<String, Object> data = new HashMap<String, Object>();
		String weid = (String) httpSession.getAttribute("uname");
		if (httpSession.getAttribute("uname") != null) {
			int userid = userService.queryUidByWeid(weid);
			data.put("uname", weid);
			data.put("proid", proid);
			List<OrderProductModel> unordered = orderProductService
					.queryAllUngenerted();
			ProductModel productModel = productService.getProductById(Integer
					.parseInt(proid));
			OrderProductModel orderProductModel = new OrderProductModel();
			orderProductModel.setProduct(productModel);
			orderProductModel.setStatus(0);
			orderProductModel.setNum(Integer.parseInt(count));
			if (unordered.size() == 0) {
				OrderModel orderModel = new OrderModel();
				orderModel.setUserId(userid);
				orderService.insertOrder(orderModel);
				int orderid = orderModel.getOrderId();
				orderProductModel.setOrderId(orderid);
			} else {
				orderProductModel.setOrderId(unordered.get(0).getOrderId());
			}
			orderProductService.insertOrderProduct(orderProductModel);
			List<OrderProductModel> orderProductModels = orderProductService
					.queryByOrderid(orderProductModel.getOrderId());
			String cartinfo = JacksonUtil.toJSon(orderProductModels);
			data.put("cartinfo", cartinfo);
			// 跳转订单结算页
			return new ModelAndView("page/shopping_cart", data);
		} else {
			return new ModelAndView("page/login");
		}

	}
}
