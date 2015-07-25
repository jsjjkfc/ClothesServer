package com.twocore.controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.twocore.bean.resp.RespProductData;
import com.twocore.bean.resp.RespProductsModel;
import com.twocore.bean.resp.RespSupplierData;
import com.twocore.model.OrderProductModel;
import com.twocore.model.PicModel;
import com.twocore.model.ProductModel;
import com.twocore.model.SupplierModel;
import com.twocore.model.TypeModel;
import com.twocore.service.ISupplierService;

@Scope("prototype")
// singleton为单例模式
@Controller
@RequestMapping("/supplier")
/**
 * 供应商管理页
 * @author lupeng
 *
 */
public class SupplierController {
	@Resource(name = "supplierService")
	ISupplierService supplierService;

	// 供应商数据列表服务
	@SuppressWarnings("rawtypes")
	@RequestMapping(value = "/queryPaged", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public @ResponseBody RespSupplierData getProducts(
			@RequestParam String aoData) {
		String sEcho = null;
		int iDisplayStart = 0; // 起始索引
		int iDisplayLength = 0; // 每页显示的行数
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			List list = objectMapper.readValue(aoData, List.class);
			for (int i = 0; i < list.size(); i++) {
				Map map = (Map) list.get(i);
				Set set = map.keySet();
				Iterator it = set.iterator();
				while (it.hasNext()) {
					String key = (String) it.next();
					if (map.get(key).equals("sEcho"))
						sEcho = map.get("value") + "";
					if (map.get(key).equals("iDisplayStart"))
						iDisplayStart = (Integer) map.get("value");
					if (map.get(key).equals("iDisplayLength"))
						iDisplayLength = (Integer) map.get("value");
				}
			}
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		RespSupplierData respSupplierData = new RespSupplierData();
		List<SupplierModel> list = supplierService.getSuppliers(iDisplayStart,
				iDisplayLength);
		respSupplierData.setAaData(list);
		respSupplierData.setsEcho(sEcho);
		int count = supplierService.getSupplierCount();
		respSupplierData.setiTotalDisplayRecords(count);
		respSupplierData.setiTotalRecords(count);
		return respSupplierData;
	}

	// 添加一个供应商
	@RequestMapping(value = "/addSupplier", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public @ResponseBody String addSupplier(
			MultipartHttpServletRequest request, HttpServletResponse response) {
		SupplierModel supplierModel = new SupplierModel();
		supplierModel.setDesc(request.getParameter("desc"));
		supplierService.addSupplier(supplierModel);
		return "success";
	}

	// 修改一个供应商
	@RequestMapping(value = "/upSupplier", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public @ResponseBody String updateSupplier(
			MultipartHttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		SupplierModel supplierModel = supplierService.queryById(Integer
				.parseInt(id));
		supplierModel.setDesc(request.getParameter("desc"));
		supplierService.updateSupplier(supplierModel);
		return "success";
	}

	// 删除一个商品
	@RequestMapping(value = "/deleteSupplier", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public @ResponseBody String deleteProduct(HttpServletRequest request,
			HttpServletResponse response) {
		String supplierId = request.getParameter("id");
		SupplierModel supplierModel = supplierService.queryById(Integer
				.parseInt(supplierId));
		supplierService.deleteSupplier(supplierModel);
		return "success";
	}

	@RequestMapping(value = "/page", method = RequestMethod.GET)
	public String getSupplier() {
		return "page/supplier_manager";
	}
}
