package com.twocore.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.twocore.service.impl.WechatService;
import com.twocore.utils.SignUtil;

@Controller
@RequestMapping("/wechat")
public class WeChat {
	@Autowired
	WechatService service;
	/** 
     * 校验信息是否是从微信服务器发过来的。 
     *  
     * @param weChat 
     * @param out 
	 * @throws IOException 
     */  
    @RequestMapping(method = { RequestMethod.GET }, produces = "application/json;charset=UTF-8")  
    public void valid(HttpServletRequest request, HttpServletResponse response) throws IOException {
    	// 微信加密签名
		String signature = request.getParameter("signature");
		// 时间戳
		String timestamp = request.getParameter("timestamp");
		// 随机数
		String nonce = request.getParameter("nonce");
		// 随机字符串
		String echostr = request.getParameter("echostr");
		PrintWriter out = response.getWriter();
		// 通过检验signature对请求进行校验，若校验成功则原样返回echostr，表示接入成功，否则接入失败
		if (SignUtil.checkSignature(signature, timestamp, nonce)) {
			System.out.println("微信服务验证成功！");
			out.write(echostr);

		
		}
		out.close();
		out = null;
    }  
  
    /** 
     * 微信消息的处理 入口
     *  
     * @param request 
     * @param out 
     * @throws IOException 
     */  
    @RequestMapping(method = { RequestMethod.POST }, produces = "application/xml;charset=UTF-8")  
    public void dispose(HttpServletRequest request, HttpServletResponse response)  
            throws IOException {      
        // 将请求、响应的编码均设置为UTF-8（防止中文乱码）  
        request.setCharacterEncoding("UTF-8");  
        response.setCharacterEncoding("UTF-8");  
        System.out.println("进入post请求");
        String respMessage = service.processRequest(request);  
        PrintWriter out = response.getWriter();
		out.print(respMessage);
		out.close();
		out=null;
       
    }  
}
