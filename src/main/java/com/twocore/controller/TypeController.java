package com.twocore.controller;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.twocore.bean.resp.RespSupplierData;
import com.twocore.bean.resp.RespTypeData;
import com.twocore.model.SupplierModel;
import com.twocore.model.TypeModel;
import com.twocore.service.IProductTypeService;

@Scope("prototype")
// singleton为单例模式
@Controller
@RequestMapping("/type")
/**
 * 商品类型管理页
 * @author lupeng
 *
 */
public class TypeController {
	@Resource(name = "productTypeService")
	IProductTypeService productTypeService;

	// 供应商数据列表服务
	@SuppressWarnings("rawtypes")
	@RequestMapping(value = "/queryPaged", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public @ResponseBody RespTypeData getProducts(@RequestParam String aoData) {
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

		RespTypeData respTypeData = new RespTypeData();
		List<TypeModel> list = productTypeService.getTypes(iDisplayStart,
				iDisplayLength);
		respTypeData.setAaData(list);
		respTypeData.setsEcho(sEcho);
		int count = productTypeService.getTypeCount();
		respTypeData.setiTotalDisplayRecords(count);
		respTypeData.setiTotalRecords(count);
		return respTypeData;
	}

	// 添加一个供应商
	@RequestMapping(value = "/addType", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public @ResponseBody String addSupplier(
			MultipartHttpServletRequest request, HttpServletResponse response) {
		TypeModel typeModel = new TypeModel();
		typeModel.setName(request.getParameter("name"));
		productTypeService.addType(typeModel);
		return "success";
	}

	// 修改一个供应商
	@RequestMapping(value = "/upType", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public @ResponseBody String updateSupplier(
			MultipartHttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		TypeModel typeModel = productTypeService.getTypeById(Integer
				.parseInt(id));
		typeModel.setName(request.getParameter("name"));
		productTypeService.updateType(typeModel);
		return "success";
	}

	// 删除一个商品
	@RequestMapping(value = "/deleteType", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public @ResponseBody String deleteProduct(HttpServletRequest request,
			HttpServletResponse response) {
		String supplierId = request.getParameter("id");
		TypeModel typeModel = productTypeService.getTypeById(Integer
				.parseInt(supplierId));
		productTypeService.deleteType(typeModel);
		return "success";
	}

	@RequestMapping(value = "/page", method = RequestMethod.GET)
	public String getSupplier() {
		return "page/type_manager";
	}
}
