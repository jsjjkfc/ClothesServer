<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="format-detection" content="telephone=no">
<title>管理收货地址</title>
<link rel="stylesheet" href="../frozenui/dist/css/frozen.css">
<style>
* {
	max-height: 1000000px
}
</style>
<style>
.iconfont {
	font-family: orderapp-manage-iconfont !important;
	font-size: 16px;
	font-style: normal;
	-webkit-font-smoothing: antialiased;
	-webkit-text-stroke-width: .2px;
	-moz-osx-font-smoothing: grayscale;
}

#container {
	height: auto;
	width: 100%;
}

#addressList {
	padding-bottom: 48px;
	width: 100%;
	margin-top: 45px;
}

* {
	max-height: 1000000px;
	box-sizing: border-box;
}

.address-row {
	border: none;
	background-image: linear-gradient(to bottom, #ddd 0, #ddd 50%, transparent 50%),
		linear-gradient(to bottom, transparent 50%, #d8d8d8 50%, #d8d8d8 100%);
	background-size: 100% 1px, 100% 1px;
	background-repeat: no-repeat;
	background-position: top;
	min-height: 69px;
	font-size: 12px;
	padding: 15px 12px;
	position: relative;
}

.address-row.active {
	background-color: #5e6b85;
	color: #fff;
}

.address-row div {
	margin-right: 47px;
}

.address-row :first-child {
	margin-bottom: 6px;
}

.address-row .right-icons {
	visibility: hidden;
	position: absolute;
	right: 0;
	width: 41px;
	height: 100%;
	top: 0;
	padding-top: 30px;
	padding-left: 6px;
}

.address-row.active .right-icons {
	visibility: visible;
}

.address-row .right-icons i {
	color: #fff;
}

.font-32 {
	font-size: 16px;
	max-height: 750px;
}

.font-24 {
	font-size: 12px;
	line-height: 15px;
	max-height: 750px;
}

#actionBtn {
	background-color: #f50;
	color: #fff;
	font-size: 16px;
	height: 48px;
	width: 100%;
	position: fixed;
	left: 0;
	bottom: 0;
	border: 0;
	align-items: flex-start;
	text-align: center;
	cursor: default;
}
</style>
</head>
<body style="background: #FFF">
	<header class="ui-header ui-header-positive ui-border-b"
		style="background: #d22147"> <i class="ui-icon-return"
		onclick="history.back()"></i>
	<h1>
		管理收货地址<i class="ui-icon-home" style="float: right"></i>
	</h1>
	</header>

	<div id="container">
		<ul id="addressList">
			<li data-deliverid="1762080955" class="address-row active"><div
					class="font-32">
					<label>收货人:</label> <label name="user-name">陆鹏</label><label
						name="phone-num" style="float: right">18604442068</label>
				</div>
				<div class="font-24">
					<label>收货地址:</label><label name="address">上海上海市徐汇区平江路48号</label>
				</div> <span class="right-icons"><i class="ui-icon-collected"></i><i
					class="iconfont icon-right"></i></span></li>
			<li data-deliverid="1762080955" class="address-row"><div
					class="font-32">
					<label>收货人:</label> <label name="user-name">陆鹏</label><label
						name="phone-num" style="float: right">18604442068</label>
				</div>
				<div class="font-24">
					<label>收货地址:</label><label name="address">上海上海市徐汇区平江路48号</label>
				</div> <span class="right-icons"><i class="ui-icon-collected"></i><i
					class="iconfont icon-right"></i></span></li>
			<li data-deliverid="1762080955" class="address-row"><div
					class="font-32">
					<label>收货人:</label> <label name="user-name">陆鹏</label><label
						name="phone-num" style="float: right">18604442068</label>
				</div>
				<div class="font-24">
					<label>收货地址:</label><label name="address">上海上海市徐汇区平江路48号</label>
				</div> <span class="right-icons"><i class="ui-icon-collected"></i><i
					class="iconfont icon-right"></i></span></li>
		</ul>
		<button id="actionBtn">新增收货地址</button>
	</div>

	<!-- /.ui-container-->
	<script src="../frozenui/lib/zepto.min.js"></script>
	<script src="../frozenui/dist/js/frozen.js"></script>
	<script>
		$('ul li').click(function() {
			location.href = $(this).data('href');
		});
		$('.ui-header .ui-btn').click(function() {
			location.href = 'index.html';
		});
	</script>
</body>
</html>