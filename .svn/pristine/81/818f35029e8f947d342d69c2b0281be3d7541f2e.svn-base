package com.twocore.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import me.chanjar.weixin.common.api.WxConsts;
import me.chanjar.weixin.common.bean.WxMenu;
import me.chanjar.weixin.common.bean.WxMenu.WxMenuButton;
import me.chanjar.weixin.common.exception.WxErrorException;
import me.chanjar.weixin.mp.api.WxMpServiceImpl;
import me.chanjar.weixin.mp.bean.result.WxMpUser;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import com.twocore.bean.wechat.Article;
import com.twocore.bean.wechat.Constant;
import com.twocore.bean.wechat.NewsMessage;
import com.twocore.bean.wechat.TextMessage;
import com.twocore.utils.MessageUtil;

public class WechatService {

	 private static Logger log = LoggerFactory.getLogger(WechatService.class);
	@Autowired
	WxMpServiceImpl wxMpServiceImpl;

	/**
	 * 处理微信发来的请求
	 * 
	 * @param request
	 * @return
	 */
	public  String processRequest(HttpServletRequest request) {
		
		String respMessage = null;
		try {
			// xml请求解析
			Map<String, String> requestMap = MessageUtil.parseXml(request);

			// 发送方帐号（open_id）
			String fromUserName = requestMap.get("FromUserName");
			// 公众帐号
			String toUserName = requestMap.get("ToUserName");
			// 消息类型
			String msgType = requestMap.get("MsgType");
			System.out.println("");
			System.out.println("msgType:" + msgType);
			System.out.println("fromUserName:" + fromUserName);
			System.out.println("toUserName:" + toUserName);

			WxMpUser user=wxMpServiceImpl.userInfo(fromUserName, "zh_CN");
			System.out.println(user.getNickname());
			// 默认回复此文本消息
			TextMessage textMessage = new TextMessage();
			textMessage.setToUserName(fromUserName);
			textMessage.setFromUserName(toUserName);
			textMessage.setCreateTime(new Date().getTime());
			textMessage.setMsgType(MessageUtil.RESP_MESSAGE_TYPE_TEXT);
			textMessage.setFuncFlag(0);
			// 由于href属性值必须用双引号引起，这与字符串本身的双引号冲突，所以要转义
			StringBuffer contentMsg = new StringBuffer();
			contentMsg.append(Constant.title).append("\n");
			contentMsg.append("您好，请回复数字测试数据展示效果：").append("\n\n");
			contentMsg.append("1 单图文消息展示").append("\n");
			contentMsg.append("2 单图文消息展示(不带图)").append("\n");
			contentMsg.append("3 多图文消息展示").append("\n");
			contentMsg.append("4 多图文消息展示(首条信息不带图)").append("\n");
			contentMsg.append("5 多图文消息展示(末尾信息不带图)").append("\n");
			contentMsg
					.append("点击查看 <a href=\"http://120.26.137.221/ClothesServer\">服装首页</a>");

			textMessage.setContent(contentMsg.toString());
			// 将文本消息对象转换成xml字符串
			respMessage = MessageUtil.textMessageToXml(textMessage);

			// 文本消息
			if (msgType.equals(MessageUtil.REQ_MESSAGE_TYPE_TEXT)) {
				// 接收用户发送的文本消息内容
				String content = requestMap.get("Content");
				System.out.println("content:" + content);

				// 创建图文消息
				NewsMessage newsMessage = new NewsMessage();
				newsMessage.setToUserName(fromUserName);
				newsMessage.setFromUserName(toUserName);
				newsMessage.setCreateTime(new Date().getTime());
				newsMessage.setMsgType(MessageUtil.RESP_MESSAGE_TYPE_NEWS);
				newsMessage.setFuncFlag(0);

				List<Article> articleList = new ArrayList<Article>();
				// 单图文消息
				if ("1".equals(content)) {
					Article article = new Article();
					article.setTitle(Constant.title);
					article.setDescription("做的不错！做的不错！做的不错！做的不错！做的不错！做的不错！做的不错！做的不错！做的不错！");
					article.setPicUrl("http://chenqidou.pagekite.me/ClothesServer/image/logo-zn.png");
					String url=wxMpServiceImpl.oauth2buildAuthorizationUrl("http://chenqidou.pagekite.me/ClothesServer/account/weChatLogin", WxConsts.OAUTH2_SCOPE_USER_INFO, null);
					article.setUrl(url);
					articleList.add(article);
					// 设置图文消息个数
					newsMessage.setArticleCount(articleList.size());
					// 设置图文消息包含的图文集合
					newsMessage.setArticles(articleList);
					// 将图文消息对象转换成xml字符串
					respMessage = MessageUtil.newsMessageToXml(newsMessage);
				}
				// 单图文消息---不含图片
				else if ("2".equals(content)) {
					Article article = new Article();
					article.setTitle(Constant.title);
					// 图文消息中可以使用QQ表情、符号表情
					article.setDescription("心情不错！心情不错！心情不错！心情不错！心情不错！心情不错！心情不错！心情不错！心情不错！");
					// 将图片置为空
					article.setPicUrl("");
					article.setUrl("http://120.26.137.221/ClothesServer");
					articleList.add(article);
					newsMessage.setArticleCount(articleList.size());
					newsMessage.setArticles(articleList);
					respMessage = MessageUtil.newsMessageToXml(newsMessage);
				}
				// 多图文消息
				else if ("3".equals(content)) {
					Article article1 = new Article();
					article1.setTitle(Constant.title);
					article1.setDescription("");
					article1.setPicUrl("http://120.26.137.221/ClothesServer/image/sy_img/2.jpg");
					article1.setUrl("http://120.26.137.221/ClothesServer");

					Article article2 = new Article();
					article2.setTitle(Constant.title);
					article2.setDescription("");
					article2.setPicUrl("http://120.26.137.221/ClothesServer/image/sy_img/2.jpg");
					article2.setUrl("http://120.26.137.221/ClothesServer");

					Article article3 = new Article();
					article3.setTitle(Constant.title);
					article3.setDescription("");
					article3.setPicUrl("http://120.26.137.221/ClothesServer/image/sy_img/2.jpg");
					article3.setUrl("http://120.26.137.221/ClothesServer");

					articleList.add(article1);
					articleList.add(article2);
					articleList.add(article3);
					newsMessage.setArticleCount(articleList.size());
					newsMessage.setArticles(articleList);
					respMessage = MessageUtil.newsMessageToXml(newsMessage);
				}
				// 多图文消息---首条消息不含图片
				else if ("4".equals(content)) {
					Article article1 = new Article();
					article1.setTitle(Constant.title);
					article1.setDescription("");
					// 将图片置为空
					article1.setPicUrl("");
					article1.setUrl("http://120.26.137.221/ClothesServer");

					Article article2 = new Article();
					article2.setTitle(Constant.title);
					article2.setDescription("");
					article2.setPicUrl("http://120.26.137.221/ClothesServer/image/sy_img/2.jpg");
					article2.setUrl("http://120.26.137.221/ClothesServer");

					Article article3 = new Article();
					article3.setTitle(Constant.title);
					article3.setDescription("");
					article3.setPicUrl("http://120.26.137.221/ClothesServer/image/sy_img/2.jpg");
					article3.setUrl("http://120.26.137.221/ClothesServer");

					Article article4 = new Article();
					article4.setTitle(Constant.title);
					article4.setDescription("");
					article4.setPicUrl("http://120.26.137.221/ClothesServer/image/sy_img/2.jpg");
					article4.setUrl("http://120.26.137.221/ClothesServer");

					articleList.add(article1);
					articleList.add(article2);
					articleList.add(article3);
					articleList.add(article4);
					newsMessage.setArticleCount(articleList.size());
					newsMessage.setArticles(articleList);
					respMessage = MessageUtil.newsMessageToXml(newsMessage);
				}
				// 多图文消息---最后一条消息不含图片
				else if ("5".equals(content)) {
					Article article1 = new Article();
					article1.setTitle(Constant.title);
					article1.setDescription("");
					article1.setPicUrl("http://120.26.137.221/ClothesServer/image/sy_img/2.jpg");
					article1.setUrl("http://120.26.137.221/ClothesServer");

					Article article2 = new Article();
					article2.setTitle(Constant.title);
					article2.setDescription("");
					article2.setPicUrl("http://120.26.137.221/ClothesServer/image/sy_img/2.jpg");
					article2.setUrl("http://120.26.137.221/ClothesServer");

					Article article3 = new Article();
					article3.setTitle(Constant.title);
					article3.setDescription("");
					// 将图片置为空
					article3.setPicUrl("");
					article3.setUrl("http://120.26.137.221/ClothesServer");

					articleList.add(article1);
					articleList.add(article2);
					articleList.add(article3);
					newsMessage.setArticleCount(articleList.size());
					newsMessage.setArticles(articleList);
					respMessage = MessageUtil.newsMessageToXml(newsMessage);
				}
			} else if (msgType.equals(MessageUtil.REQ_MESSAGE_TYPE_EVENT)) {
				// 接收用户发送的事件请求内容
				String Event = requestMap.get("Event");
				String EventKey = requestMap.get("EventKey");
				System.out.println("EventKey:" + Event);
				System.out.println("EventKey:" + EventKey);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return respMessage;
	}
	/**创建微信菜单选项，随着程序第一次初始化自动调用，定义在method-init接口中*/
	public void createMenu() {

		WxMenu wxMenu = new WxMenu();
		List<WxMenuButton> buttons = new ArrayList<WxMenuButton>();
		for (int i = 0; i <= 2; i++) {
			WxMenuButton button = new WxMenuButton();
			button.setName("testsss" + i);
			button.setType("click");
			button.setKey("test" + i);
			button.setUrl("");
			List<WxMenuButton> subbuttons = new ArrayList<WxMenuButton>();
			for (int k = 0; k <= 2; k++) {
				WxMenuButton subbutton = new WxMenuButton();
				subbutton.setName("test" + k);
				subbutton.setType("click");
				subbutton.setKey("test" + k);
				subbutton.setUrl("");
				subbuttons.add(subbutton);
			}
			button.setSubButtons(subbuttons);
			buttons.add(button);
		}

		wxMenu.setButtons(buttons);
		try {
			wxMpServiceImpl.menuCreate(wxMenu);
			System.out.println(wxMpServiceImpl.getAccessToken());

		} catch (WxErrorException e) {
			log.error(e.getMessage());
		}
	}


}