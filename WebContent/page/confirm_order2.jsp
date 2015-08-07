<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 立即购买跳过来的的订单结算页 -->
<title>确认订单</title>
<meta charset="utf-8">
<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, minimal-ui"
	name="viewport" />
<meta content="yes" name="apple-mobile-web-app-capable" />
<meta content="black" name="apple-mobile-web-app-status-bar-style" />
<meta content="telephone=no" name="format-detection" />
<link rel="stylesheet" href="../css/order/msg-hd.css" />
<style type="text/css">
.checkbox {
	position: relative;
	display: inline-block;
}

.checkbox input {
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	z-index: 5;
	opacity: 0;
	cursor: pointer;
}

.checkbox label {
	width: 49px;
	height: 29px;
	background: #ccc;
	position: relative;
	display: inline-block;
	border-radius: 14.5px;
	-webkit-transition: 0.4s;
	transition: 0.4s;
}

.checkbox input:checked+label {
	background: #4BD865;
}

.checkbox label:after {
	content: '';
	position: absolute;
	width: 50px;
	height: 50px;
	border-radius: 100%;
	left: 0;
	top: -5px;
	z-index: 2;
	background: #fff;
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
	-webkit-transition: 0.4s;
	transition: 0.4s;
	top: 0;
	width: 29px;
	height: 29px;
}

.checkbox input:checked+label:after {
	left: 20px;
}
</style>
</head>
<body>
	<article id="J_BuyOrder" class="mb-anim-view mb-anim-view-active">
	<div id="A_tddress" class="tm-block tddress ">
		<div class="tddress-title">
			<i class="icon icon-location"></i> 收货信息
		</div>
		<div class="tddress-content"
			data-clk="buy-order-m/mod/address:showAddrList">
			<div class="tddress-usr">
				<span class="tddress-content"><span class="tddress-usr-name">${address.receiver}</span><span
					class="tddress-usr-phone"> ${address.mobile}</span> </span>
			</div>
			<div class="tddress-detail mui-flex">
				<div class="cell tddress-content">${address.address}</div>
				<div class="icon tm-nav-right cell fixed"></div>
			</div>
			<div class="tddress-tip" style="display: none;">(收货不便时，可选择代收货服务)</div>
		</div>
	</div>
	<div id="A_orders" class="tm-block orders "></div>
	<div id="A_checkbar" class="tm-block checkbar ">
		<div class="buy-result mui-flex align-center">
			<div class="cell">
				<div class="realPay" id="realPay_1">
					<span class="count">共1件，</span><span class="money"><span
						class="hd">总金额：</span><span class="bd"><span class="tc-rmb">￥</span><strong
							id="J_RealPay">26.00</strong> </span> </span>
				</div>
			</div>
			<div class="cell fixed action">
				<div class="submit-btn-wrapper">
					<span id="submitOrder_1" class="j_goBtn btn-submit"
						data-clk="buy-order-m/mod/go:submit" title="提交订单">提交订单</span>
				</div>
			</div>
		</div>
	</div>
	</article>
	<article id="J_slider" class="mb-anim-view"> </article>
	<article id="J_addr_selector" class="mb-anim-view"></article>
	<form id="J_orderForm" action="/ClothesServer/settlement/onaccount"
		method="post" target="_self" class="main-confirm-content">
		<input name='addressId' type='hidden' value='' id="addressId">
		<input type="hidden" id="orderData" value="" name="orderData">
		<input type="submit" id="up">
	</form>
	<input type="hidden" id="addAddress" value="" />
	<script type="text/javascript" src="../js/jquery/jquery-1.11.3.min.js"></script>
	<script type="text/javascript">
		var addressId = $
		{
			address.addressId
		};
		var orderData = new Array();
		address();
		function address() {
			$
					.getJSON(
							"/ClothesServer/address/list?userId=${userId}",
							function(data) {
								var html = "";
								$
										.each(
												data,
												function(i, address) {
													if (i == 0) {
														html += '<div class="tm-block slider-address-item tddress addr-cur selected "'+
								'		data-clk="buy-order-m/mod/address:selectAddr" data-index="1"'+
								'		data-option-id="'+address.addressId+'">'
																+ '		<div class="slider-address-usr">'
																+ '			<span class="tm-title">'
																+ address.receiver
																+ '</span><span class="tm-content">'
																+ address.mobile
																+ '</span>'
																+ '			<aside class="simple-indicator">&nbsp;</aside>'
																+ '		</div>'
																+ '		<div class="tddress-detail">'
																+ '			<span class="tm-title">'
																+ address.address
																+ '</span>'
																+ '		</div>'
																+ '	</div>';
													} else {
														html += '<div class="tm-block slider-address-item tddress non-selected"'+
								'		data-clk="buy-order-m/mod/address:selectAddr" data-index="0"'+
								'		data-option-id="'+address.addressId+'">'
																+ '		<div class="slider-address-usr">'
																+ '			<span class="tm-title">'
																+ address.receiver
																+ '</span><span class="tm-content">'
																+ address.mobile
																+ '</span>'
																+ '			<aside class="simple-indicator">&nbsp;</aside>'
																+ '		</div>'
																+ '		<div class="tddress-detail">'
																+ '			<span class="tm-title">'
																+ address.address
																+ ' </span>'
																+ '		</div>'
																+ '	</div>';
													}
												});
								html += '<a data-mm="addr_new" data-mark="2.21"'+
						'		href=""'+
						'		class="ui-address-new">+新增收货地址</a>';
								$("#J_slider").html(html);
								$("#J_slider")
										.find(
												".tm-block.slider-address-item.tddress")
										.click(
												function() {
													var addressId = $(this)
															.attr(
																	"data-option-id");
													$
															.getJSON(
																	"/ClothesServer/address/select?userId=${userId}&addressId="
																			+ addressId,
																	"text",
																	function(
																			data) {
																		$(
																				".tddress-usr-name")
																				.text(
																						data.receiver);
																		$(
																				".tddress-usr-phone")
																				.text(
																						data.mobile);
																		$(
																				".cell.tddress-content")
																				.text(
																						data.address);
																		addressId = data.addressId;
																		address();
																		$(
																				"#J_slider")
																				.removeClass(
																						"mb-anim-view-active");
																		$(
																				"#J_BuyOrder")
																				.addClass(
																						"mb-anim-view-active");
																	});
												});
							});
		}
		$("#A_tddress").find("div").eq(1).click(function() {
			$("#J_BuyOrder").removeClass("mb-anim-view-active");
			$("#J_slider").addClass("mb-anim-view-active");
		});
		function replace(string) {
			if (string == null) {
				return "";
			} else {
				return string;
			}
		}
		var orderProduct = eval("(" + '${orderproduct}' + ")");//转换为json对象
		var html = '<article class="bundle-content" id="order_b_142813344858"> <header class="tm-header bundle-header header-TmallSeller">'
				+ '		<div class="tm-title">'
				+ '			<ins class="icon-shop"></ins>' + '			<span>'
				+ orderProduct.product.supplier.desc
				+ '</span>'
				+ '		</div>'
				+ '		</header> <section class="bundle-detail-container">'
				+ '		<ul class="main-content">'
				+ '			<li id="item_40939309150:62626953728:0" class="order-item ">'
				+ '				<div class="item-content mui-flex">'
				+ '					<div class="item-img cell fixed">'
				+ '						<img data-mm="openitem_pic" data-mark="2.20" height="60" src="'+orderProduct.product.picPathes[0].picPath+'">'
				+ '					</div>'
				+ '					<div class="item-detail cell">'
				+ '						<div class="inner">'
				+ '							<span class="item-title" data-mm="openitem_txt" data-mark="2.20">'
				+ orderProduct.product.name
				+ '</span>'
				+ '							<div class="item-sku">'
				+ '								<p>'
				+ '									<label>分类：</label><span class="bd">'
				+ getTypes(orderProduct)
				+ '</span>'
				+ '								</p>'
				+ '							</div>'
				+ '							<div class="item-icons" data-clk="buy-order-m/mod/order:showIcons" data-id="itemInfo_40939309150:62626953728:0">'
				+ '								<div class="item-icon-tip">七天退换</div>'
				+ '							</div>'
				+ '						</div>'
				+ '					</div>'
				+ '					<div class="item-result cell fixed">'
				+ '						<div class="itemPay " id="itemPay_40939309150:62626953728:0">'
				+ '							<span class="ui-price">￥</span>'
				+ orderProduct.product.salePrice
				+ '<br>x'
				+ orderProduct.num
				+ '						</div>'
				+ '					</div>'
				+ '				</div>'
				+ '				<div class="item-amount mui-flex tm-high-block">'
				+ '					<div class="cell title">购买数量</div>'
				+ '					<div class="cell fixed tc-amount quantity" id="quantity_40939309150:62626953728:0">'
				+ '						<a data-mm="num_minus" data-mark="2.28" class="minus off" data-clk="buy-order-m/mod/quantity:minus"></a><input type="number" pattern="[0-9]*" autocomplete="off" class="textinput tc-text amount" value="'+orderProduct.num+'"><a data-mm="num_add" data-mark="2.28" class="plus " data-clk="buy-order-m/mod/quantity:plus"></a>'
				+ '					</div>'
				+ '				</div>'
				+ '				<div class="itemPay prepay" id="itemPay_40939309150:62626953728:0"></div>'
				+ '			</li>'
				+ '			<li class="eticket-wrapper"></li>'
				+ '			<li id="deliveryMethod_b_142813344858" class="main-postage "><div class="main-postage-item tm-high-block mui-flex" data-postage-id="deliveryMethod_b_142813344858">'
				+ '					<div class="cell title fixed">配送方式</div>'
				+ '					<div class="cell types selectinput">'
				+ '						<select dir="rtl" class="select-postage" id="deliveryMethod_b_142813344858"><option value="2" selected="selected">快递 免邮</option></select>'
				+ '					</div>'
				+ '				</div></li>'
				+ '		</ul>'
				+ '		<div id="invoice_b_142813344858" class="invoice tm-high-block">'
				+ '			<div class="invoice-check mui-flex" data-clk="buy-order-m/mod/invoice:toggle">'
				+ '				<div class="cell title">开具发票</div>'
				+ '				<aside class="cell fixed ">'
				+ '				<div class="ui-bf-mask"></div>'
				+ '				<!-- <div class="switch">'
				+ '					<input class="ui-checkbox use-invoice-btn" type="checkbox"'
			+ '						checked="">'
				+ '					<div class="indicator"></div>'
				+ '				</div> -->'
				+ '				<div class="checkbox" onclick="switchStatus(this)">'
				+ '					<input type="checkbox"> <label></label>'
				+ '				</div>'
				+ '				</aside>'
				+ '			</div>'
				+ '			<dl class="invoice-content" style="display: none;">'
				+ '				<dt class="invoice-title mui-flex">'
				+ '					<label class="cell mui-flex">发票抬头：<input value="某某公司" class="textinput cell invoice-title-input" placeholder="请输入发票抬头" type="text"></label>'
				+ '				</dt>'
				+ '			</dl>'
				+ '		</div>'
				+ '		<div class="memo tm-high-block" id="memo_b_142813344858">'
				+ '			<textarea class="textinput" placeholder="给卖家留言" maxlength="200" id="memo_b_142813344858msg"></textarea>'
				+ '		</div>'
				+ '		<div class="orderPay tm-content mui-flex justify-end" id="orderPay_b_142813344858">'
				+ '			共'
				+ orderProduct.num
				+ '件商品，合计 <span class="ui-price">￥</span> <span class="price">'
				+ orderProduct.num
				* orderProduct.product.salePrice
				+ '</span>'
				+ '		</div>' + '		</section> </article>';
		$(".tm-block.orders").append(html);
		$(".count").text("共" + orderProduct.num + "件");
		$("#J_RealPay").text(orderProduct.num * orderProduct.product.salePrice);
		function getTypes(orderProduct) {
			var attr = '';
			attr = replace(orderProduct.size) + "&nbsp"
					+ replace(orderProduct.color) + "&nbsp"
					+ replace(orderProduct.other0) + "&nbsp"
					+ replace(orderProduct.other1) + "&nbsp"
					+ replace(orderProduct.other2);
			return attr;
		}
		function replace(string) {
			if (string == null) {
				return "";
			} else {
				return string;
			}
		}
		var num = $(".textinput.tc-text.amount");
		$(".plus").click(function() {
			var oldnum = num.val();
			num.val(parseInt(oldnum) + 1);
			num.attr("value", parseInt(oldnum) + 1);
			changeCount(parseInt(oldnum) + 1);
		});
		$(".minus.off").click(function() {
			var oldnum = num.val();
			if (oldnum == 1) {
				changeCount(1);
				return;
			} else {
				num.val(parseInt(oldnum) - 1);
				num.attr("value", parseInt(oldnum) - 1);
				changeCount(parseInt(oldnum) - 1);
			}
		});
		function changeCount(count) {
			$(".count").text("共" + count + "件");
			$("#J_RealPay").text(count * orderProduct.product.salePrice);
			$(".orderPay.tm-content.mui-flex.justify-end").html(
					"共" + count + "件商品，合计 " + '<span class="ui-price">￥</span>'
							+ '<span class="price">' + count
							* orderProduct.product.salePrice + '</span>');
			$(".item-result").find(".itemPay").html(
					'<span class="ui-price">￥</span>'
							+ orderProduct.product.salePrice + '<br>X' + count);
		}
		//切换滑块状态
		function switchStatus(div) {
			$(div).parent().parent().next().toggle();
		}
		$(".submit-btn-wrapper").click(function() {
			orderProduct.num = $(".textinput.tc-text.amount").attr("value");
			orderData.push(orderProduct);
			orderData.toString();
			$("#addressId").attr("value", addressId);
			$("#orderData").attr("value", JSON.stringify(orderData));
			$("#up").click();
		});
	</script>
</body>
</html>