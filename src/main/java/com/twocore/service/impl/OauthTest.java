package com.twocore.service.impl;

import me.chanjar.weixin.common.api.WxConsts;
import me.chanjar.weixin.common.exception.WxErrorException;
import me.chanjar.weixin.mp.api.WxMpInMemoryConfigStorage;
import me.chanjar.weixin.mp.api.WxMpServiceImpl;
import me.chanjar.weixin.mp.bean.result.WxMpOAuth2AccessToken;
import me.chanjar.weixin.mp.bean.result.WxMpUser;

public class OauthTest {
	public static void main(String[] args) {
		WxMpInMemoryConfigStorage config = new WxMpInMemoryConfigStorage();
		config.setAppId("wx73f228fa54cfac04"); // 设置微信公众号的appid
		config.setSecret("eca45ec73c6e268bafaa8e790bdfdeee"); // 设置微信公众号的app
		config.setOauth2redirectUri("");
		config.setToken("chenqidou"); // 设置微信公众号的token
		// config.setAesKey("..."); // 设置微信公众号的EncodingAESKey

		WxMpServiceImpl wxService = new WxMpServiceImpl();
		wxService.setWxMpConfigStorage(config);
		String code = wxService.oauth2buildAuthorizationUrl(
				WxConsts.OAUTH2_SCOPE_BASE, null);
		try {
			WxMpOAuth2AccessToken wxMpOAuth2AccessToken = wxService
					.oauth2getAccessToken(code);
			String openid = wxMpOAuth2AccessToken.getOpenId();
		} catch (WxErrorException e) {
			e.printStackTrace();
		}
	}

}
