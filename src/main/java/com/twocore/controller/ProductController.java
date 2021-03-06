package com.twocore.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.twocore.bean.resp.RespProductData;
import com.twocore.model.OrderModel;
import com.twocore.model.OrderProductModel;
import com.twocore.model.ProductModel;
import com.twocore.model.TypeModel;
import com.twocore.service.IProductService;
import com.twocore.utils.JacksonUtil;

@Scope("prototype")
// singleton为单例模式
@Controller
@RequestMapping("/product")
public class ProductController {
	@Resource(name = "productService")
	IProductService productService;

	@RequestMapping(value = "/productdetail", method = RequestMethod.GET)
	public ModelAndView toProDetail(@RequestParam("id") String id) {
		System.out.println(id);
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("productId", id);
		return new ModelAndView("/page/product_detail", data);
	}

	// 获取该商品数据
	@RequestMapping(value = "/productinfo", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	public @ResponseBody ProductModel getinfo(@RequestParam("id") String id) {
		return productService.getProductById(Integer.valueOf(id));
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView addToCart(@RequestParam("proid") String proid,
			@RequestParam("count") String count, HttpSession httpSession) {
		if (httpSession.getAttribute("uname") != null) {
			// 跳转订单结算页
			return new ModelAndView("redirect:/shoppingcart/add?proid=" + proid
					+ "&count=" + count);
		} else {
			return new ModelAndView("page/login");
		}

	}
}
