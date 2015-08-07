<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="format-detection" content="telephone=no">
<title>登录</title>
<link rel="stylesheet" href="../frozenui/dist/css/frozen.css">
<style type="text/css">
body {
	max-width: 640px;
	min-width: 320px;
	margin: 0 auto;
}

.header {
	width: 100%;
	z-index: 100;
	top: 0;
	height: 45px;
	line-height: 45px;
	background-color: #18b4ed;
	color: #fff;
	background-color: #18b4ed;
}

.header h1 {
	text-align: center;
	font-size: 18px
}

.header .ui-icon-return {
	position: absolute;
}
</style>
</head>
<body>
	<div class="header" style="background: #d22147;">
		<h1>
			<i class="ui-icon-return" onclick="history.back()"
				style="color: #fff"></i>支付订单<i class="ui-icon-home"
				style="float: right; color: #fff"></i>
		</h1>
	</div>

	<section class="ui-container">
	<div class="ui-btn-wrap" style="background-color: white;">
		<button class="ui-btn-lg ui-btn-primary" type="button" id="sub"
			onclick="submit()">支付</button>
	</div>
	</section>
	<!-- /.ui-container-->
	<div
		style="display: block; background-color: #fff; margin: 0 auto; padding-top: 250px; padding-bottom: 1.3em; text-align: center; width: 100%;"
		id="footer">
		<div
			style="border-bottom: 1px solid #e5e5e5; padding: 0.55em 0.71em; text-align: left;">
			<span style="color: #868686; display: inline-block; margin: 0 2px;">微信号：juyingweike
			</span> <span style="float: right"><a href="">反馈</a></span>
		</div>

		<div style="color: #999; line-height: 2.5em;">©CopyRight
			优美优科技有限公司</div>
	</div>
	<script src="../js/jquery/jquery-1.11.3.min.js"></script>
	<script src="../js/jquery/jquery.form.js"></script>
	<script>
		function submit() {
			location.href = "/ClothesServer/settlement/onpay?orderid=${orderId}";
		}
	</script>
</body>
</html>