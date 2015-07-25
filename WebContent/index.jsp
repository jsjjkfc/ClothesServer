<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=0" />
<meta name="aplus-terminal" content="1">
<meta name="apple-mobile-web-app-title" content="UMU">
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style"
	content="black-translucent" />
<meta name="format-detection" content="telephone=no, address=no">
<title>优美优商城</title>
<link rel="stylesheet" type="text/css" href="css/public.css">
<link rel="stylesheet" type="text/css" href="css/home.css">
<link rel="stylesheet" type="text/css" href="css/footer.css">

<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/reset.css" media="all">
<!--首页幻灯js-->
<script type="text/javascript" src="js/zepto/zepto.js"></script>
<script type="text/javascript" src="js/swipe/swipe.js"></script>
<style type="text/css">
body {
	background-color: #f5f5f5;
}
</style>
</head>
<body>
	<script type="text/javascript">
		//alert("用户名：${user.username} 用户类型:${user.type}");
	</script>
	<div class="banner openwebview">
		<div class="my-container">
			<div id="J_MyInfoDialog" class="my-info-dialog"
				style="display: none;">
				<h2 class="my-info-hd">我的账户</h2>
				<div class="my-info-bd" data-spm="20000009" style="height: 105px">
					<p class="mui-flex">
						<a class="cell favorite-item"
							href="//h5.m.taobao.com/fav/index.htm"> 收藏宝贝 </a> <a
							class="cell favorite-shop"
							href="//h5.m.taobao.com/fav/index.htm#!shop/queryColShop-1">
							收藏店铺 </a> <a class="cell all-order"
							href="//h5.m.taobao.com/awp/mtb/mtb.htm?v=0#!/awp/mtb/olist.htm?sta=4">
							全部订单 </a>
					</p>
				</div>
				<a href="javascript:void(0);" id="J_MyInfoClose"
					class="my-info-close" target="_self" style="color: #000"
					data-spm-anchor-id="875.7403452.0.0">X</a>
			</div>
			<div id="J_MyInfoMask" class="my-info-mask" style="display: none;"></div>
		</div>
		<div class="tm-mobile-header">
			<div class="header-content mui-flex" id="J_HeaderContent">
				<div class="category-menu cell fixed">
					<a href="javascript:void(0);" target="_self" id="J_CategoryTrigger"
						class="category-trigger">×</a>
				</div>
				<div id="J_MobileSearch" class="mobile-search cell">
					<form id="J_SearchForm" action="" method="get" accept-charset="GBK"
						target="_self">
						<div class="s-combobox">
							<div class="s-combobox-input-wrap">
								<input placeholder="搜索商品/店铺" name="q" value=""
									class="search-input" type="search" accesskey="s"
									autocomplete="off" style="height: 33px">
							</div>
						</div>
						<input type="hidden" name="type" value="p"> <input
							type="submit" class="search-button">
					</form>
				</div>
				<div class="my-info cell fixed">
					<a href="javascript:void(0);" target="_self" id="J_MyInfoTrigger"
						class="my-info-trigger status-login">登录</a>
				</div>
			</div>
		</div>

		<div style="-webkit-transform: translate3d(0, 0, 0);">
			<div id="banner_box" class="box_swipe">
				<ul
					style="list-style: none outside none; transition-duration: 500ms;">
					<li><a onClick="return false;"> <img src="image/200.jpg"
							alt="2" style="width: 100%;"> </a></li>
					<li><a onClick="return false;"> <img src="image/200.jpg"
							alt="2" style="width: 100%;"> </a></li>
					<li><a onClick="return false;"> <img src="image/200.jpg"
							alt="2" style="width: 100%;"> </a></li>
					<li><a onClick="return false;"> <img src="image/200.jpg"
							alt="2" style="width: 100%;"> </a></li>
				</ul>
				<ol>

					<li class="on"></li>
					<li></li>
					<li></li>
					<li></li>
				</ol>
			</div>
		</div>
		<script>
			$(function() {
				new Swipe(document.getElementById('banner_box'), {
					speed : 500,
					auto : 3000,
					callback : function() {
						var lis = $(this.element).next("ol").children();
						lis.removeClass("on").eq(this.index).addClass("on");
					}
				});
			});
		</script>

	</div>

	<div id="main-container"></div>
	<div class="layout-login-area" id="footer">
		<div class="layout-login">
			<span class="layout-lg-bar">微信号：juyingweike </span> <span
				class="layout-new-fr"><a href="">反馈</a> </span>
		</div>
		<div class="layout-copyright">Copyright © 2012-2015 Two-Core
			版权所有</div>
	</div>
	<div style="display: block;" class="footer_bar openwebview">
		<ul class="warp clearfix">
			<li>
				<!--<li class="on">--> <a href="/ClothesServer/home/index"
				page_click_button="底部_首页"> <i class="new_icon"></i> <span>首页</span>
			</a>
			</li>
			<li><a href="" page_click_button="底部_品牌"> <i
					class="new_icon"></i> <span>分类</span> </a></li>
			<li><a href="/ClothesServer/home/login"
				page_click_button="底部_我的"
				class="to_personalcenter personalcenternum"> <i class="new_icon"><strong
						style="display: none;"></strong> </i> <span>我的</span> </a></li>
			<li><a href="" data-url="/shoppingcart/index"
				page_click_button="底部_购物车" class="new_car_center"> <i
					class="new_icon"><strong style="">2</strong> </i> <span>购物车</span>
			</a></li>
		</ul>
	</div>
	<script type="text/javascript" src="js/jquery/jquery-1.11.3.min.js"></script>
	<!--首页幻灯js end-->
	<script type="text/javascript">
		$(".my-info.cell.fixed").click(function() {
			$("#J_MyInfoDialog").css("display", "block");
			$("#J_MyInfoMask").css("display", "block");
		});
		$("#J_MyInfoClose").click(function() {
			$("#J_MyInfoDialog").css("display", "none");
			$("#J_MyInfoMask").css("display", "none");
		});
		$(document)
				.ready(
						function($) {
							$(document).scroll(
									function() {
										var top = $(document).scrollTop();
										if (top < 100)
											$("#J_HeaderContent").removeClass(
													"tmall-bg-red");
										else {
											$("#J_HeaderContent").addClass(
													"tmall-bg-red");
										}
									});
							function fillData(product1, product2) {
								var header = '<ul class="mui-flex">';
								var footer = '</ul>';
								var body = '  <li class="cell wonderful-item"><a class="card-item"'
										+ '                        href="/ClothesServer/product/productdetail?id='
										+ product1.productId
										+ '">'
										+ '                            <span class="item-pic" style="height: 186px; line-height: 186px">'
										+ '                                <img'
										+ '                                src="'
										+ product1.picPathes[0].picPath
										+ '"'
										+ '                                width="100%" style="opacity: 1;">'
										+ '                        </span> <span class="item-info"> <span class="item-desc"> <em'+
					'                                    class="item-name" title="">'
										+ product1.name
										+ '</em>'
										+ '                            </span> <span class="item-detail"> <span class="item-price">'
										+ '                                        <span class="mui-price  "> <i class="mui-price-rmb">¥</i>'
										+ '                                            <span class="mui-price-integer">'
										+ product1.salePrice
										+ '</span>'
										+ '                                    </span>'
										+ '                                </span>'
										+ '                            </span>'
										+ '                        </span>'
										+ '                    </a></li>';
								if (product2 != null) {
									body += '  <li class="cell wonderful-item"><a class="card-item"'
											+ '                        href="/ClothesServer/product/productdetail?id='
											+ product2.productId
											+ '">'
											+ '                            <span class="item-pic" style="height: 186px; line-height: 186px">'
											+ '                                <img'
											+ '                                src="'
											+ product2.picPathes[0].picPath
											+ '"'
											+ '                                width="100%" style="opacity: 1;">'
											+ '                        </span> <span class="item-info"> <span class="item-desc"> <em'+
					'                                    class="item-name" title="">'
											+ product2.name
											+ '</em>'
											+ '                            </span> <span class="item-detail"> <span class="item-price">'
											+ '                                        <span class="mui-price  "> <i class="mui-price-rmb">¥</i>'
											+ '                                            <span class="mui-price-integer">'
											+ product2.salePrice
											+ '</span>'
											+ '                                    </span>'
											+ '                                </span>'
											+ '                            </span>'
											+ '                        </span>'
											+ '                    </a></li>';
								}
								return header + body + footer;
							}
							$
									.getJSON(
											"/ClothesServer/home/goodsList",
											function(data) {
												$
														.each(
																data,
																function(i,
																		typeData) {
																	var productlistSize = typeData.productList.length;
																	var head = '<div class="tm-mobile-module hot-market" data-spm="20000009"><h2 class="module-title" style="padding-left: 9px; border-left: 3px solid #e33f3f; background: #ffffff;">'
																			+ typeData.name
																			+ '</h2><div class="module-content"></div><a class="module-more" href="#">更多</a></div>'
																			+ '<div class="wonderful-rec" data-spm="20000012">'
																			+ '<div class="module-conttent" id="J_WonderfulList" style="background-color: #f5f5f5;">';
																	var foot = '</div>';
																	var body = '';
																	for ( var i = 0; i < productlistSize; i = i + 2) {
																		if (i == productlistSize - 2) {
																			body += fillData(
																					typeData.productList[i],
																					typeData.productList[i + 1]);
																		} else if (i == productlistSize - 1) {
																			body += fillData(
																					typeData.productList[i],
																					null);
																		} else {
																			body += fillData(
																					typeData.productList[i],
																					typeData.productList[i + 1]);
																		}
																	}
																	var item = head
																			+ body
																			+ foot;
																	$(
																			"#main-container")
																			.append(
																					item);
																});
											});
						});
	</script>
</body>

</html>