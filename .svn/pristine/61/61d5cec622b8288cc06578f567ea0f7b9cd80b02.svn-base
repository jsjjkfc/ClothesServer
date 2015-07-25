package com.twocore.controller;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.qiniu.common.QiniuException;
import com.qiniu.storage.BucketManager;
import com.qiniu.util.Auth;
import com.twocore.model.PicModel;
import com.twocore.service.IPictureService;

@Scope("prototype")
// singleton为单例模式
@Controller
@RequestMapping("/pic")
public class PicController {
	private static final String ACCESS_KEY = "6UykU4advARD3nq5QeQTTRHc1SPrzdZNL-Re9xEb";
	private static final String SERECT_KEY = "spFk5xLv6rRnvLiHTaxCa8RG3YZPyN-LaNAX8CqF";
	private static final Logger LOGGER = Logger.getLogger(PicController.class);
	@Resource(name = "pictureService")
	IPictureService pictureService;

	@RequestMapping(value = "/home", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	public @ResponseBody List<PicModel> getPic() {
		return pictureService.getAllPicPath();
	}

	LinkedList<PicModel> files = new LinkedList<PicModel>();
	PicModel picModel = null;

	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public @ResponseBody LinkedList<PicModel> upload(
			MultipartHttpServletRequest request, HttpServletResponse response) {
		// 1. build an iterator
		Iterator<String> itr = request.getFileNames();
		MultipartFile mpf = null;
		while (itr.hasNext()) {
			mpf = request.getFile(itr.next());
			LOGGER.info(mpf.getOriginalFilename() + " 上传成功! " + files.size());
			picModel = new PicModel();
			picModel.setPicPath(mpf.getOriginalFilename());
			File f = new File("/Users/lupeng/Desktop/"
					+ mpf.getOriginalFilename());
			try {
				FileUtils.copyInputStreamToFile(mpf.getInputStream(), f);
			} catch (IOException e) {
				e.printStackTrace();
			}
			files.add(picModel);
			pictureService.insertPic(picModel);
		}
		return files;
	}

	Auth auth = Auth.create(ACCESS_KEY, SERECT_KEY);// Access/Secret Key
	private BucketManager bucketManager = new BucketManager(auth);

	// 简单上传，使用默认策略
	private String getUpToken0() {
		return auth.uploadToken("clothesservicepics");// 空间名称
	}

	@RequestMapping(value = "/token", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	public @ResponseBody String getToken() {
		String token = "{\"uptoken\": \"" + getUpToken0() + "\"}";
		return token;
	}

	@RequestMapping(value = "/del", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public @ResponseBody String delPic(HttpServletRequest request,
			HttpServletResponse response) {
		String pathhttp = request.getParameter("path");
		String path = pathhttp.substring(pathhttp.lastIndexOf("/") + 1,
				pathhttp.length());
		String status = "";
		try {
			String[] buckets = bucketManager.buckets();
			String bucket = buckets[0];
			bucketManager.delete(bucket, path);
			System.err.println("已删除" + path);
			pictureService.delPicByPath(pathhttp);
			status = "success";
		} catch (QiniuException e) {
			if (LOGGER.isDebugEnabled()) {
				LOGGER.debug("七牛处理错误");
				status = "error";
			}
		}
		return status;
	}

}
