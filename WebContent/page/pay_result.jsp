<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<title>付款结果</title>
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta name="format-detection" content="telephone=no,email=no" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=0, minimal-ui" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE10" />
</head>
<body>
	<style>
.am-loading {
	position: fixed;
	z-index: 100;
	top: 45%;
	width: 100%;
	text-align: center
}

.am-loading .am-loading-text {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	display: inline-block;
	margin: -24px auto auto;
	padding: 9px 20px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	background-clip: padding-box;
	line-height: 1.5em;
	color: #fff;
	background-color: rgba(0, 0, 0, .8)
}

.am-loading .am-loading-text .icon-check-error {
	vertical-align: -2px
}

.am-loading-icon {
	display: inline-block;
	width: 24px;
	height: 24px;
	vertical-align: middle;
	background-image:
		url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAQAAABLCVATAAACsklEQVR4AZ3PUWoqSRTG8bOFs4XeQm+ht1Bb6C30FkpERCQP9SCXEC6SkiAhSJAiXIZhCEKBXIIECYVIkEsIaQkiQfqh56vqycxNTJjY5/cp+PLHos+uiMq01KUt87JsZJA2RTNucpM+hu0rRGGK8r9ryIZsBi3ZSltxi/Zhb+2SnS3K4OMQtLN21Ka33v3cqV25qzJ5ofG4uOSSSmpwI8LDRMhUxKehLb8YZDy3ywouaF+LW0k786GO7KQd7tArLEBma1/ylxwZteMdfa7NbYEMdLMud6mCVbZmiwyIF/p/nRgZL30X2shtHiRb+ppu7ENH8kgckRe+Nskm3/iM+GqmSiHjRf+Gnu1zjpTa0GGOhA+pTJEibC2ec3AbPjjEyHhxFTJrhNbZmg6nEuUvRegpWufg1lwrxEqGFNNT+pSDeqJ6VKpUT6mEHlUIidqhpKcgpQfzmEP8SPX0ohDK6ME95MAPVE+Pv6lvqidDCB+qDyGgXy6g+o6VRyv7y63cildUzzGHkKSVWTmI6oZOohN1oo4zulf37t4txZLq+Z58V5DSUiDjlqpuqJ+GUELLCBlY8IIO1+e+Cpj6tNALt3AudXS40+RUn+p+1ieEnEDGOev40MyAByqEYh8CZ5y7c3M5p8OcpQMNckADogHcxXc+5ObikMwwOdPeIH4NAf4NQrd2Fs/oa4bxUA99KD0jD/PmPNe3FiE7S76SuRDn+lwjJYdUwSq3PDPI2Bv7M5vylD434lF2oS8QQobfh2DGM33jQ3ZqpsKypX1jHotLPQKk5Dmf0yvsdzfZTx+yODORk+Q6uqbKVXSVmGysx+ZSh1Q6ot9hb03jqQ4hO4Fr85f5E/4wP8wVGDOGSzWKR7QX2mcTq/ZCEEJynIxpH/axSTQRE3mt/gnpH+oqw+MiQx/7G9K9+OkXsPIzAAAAAElFTkSuQmCC');
	background-size: 24px auto;
	-webkit-animation: rotate linear 1s infinite;
	animation: rotate linear 1s infinite
}

@
-webkit-keyframes rotate { 0%{
	-webkit-transform: rotate(0deg);
	transform: rotate(0deg)
}

100%{
-webkit-transform






:rotate(360deg)






;
transform






:rotate(360deg)






}
}
.am-password-handy {
	overflow: hidden;
	position: relative;
	margin: 0 0 20px;
	width: 100%;
	padding-bottom: 1px
}

.am-password-handy input[type=password], .am-password-handy input[type=tel],
	.am-password-handy .am-password-handy-security {
	-webkit-box-sizing: border-box;
	-ms-box-sizing: border-box;
	box-sizing: border-box;
	display: block;
	width: 100%;
	height: 44px;
	overflow: hidden;
	padding: 0 !important;
	border: 1px solid #DDD;
	border-radius: 4px;
	background-clip: padding-box;
	font-family: Courier, monospace;
	font-size: 24px;
	line-height: 32px
}

.am-password-handy input[type=password], .am-password-handy input[type=tel]
	{
	position: absolute;
	opacity: .01;
	border: 0 none !important;
	left: 0;
	-webkit-appearance: none;
	-webkit-box-sizing: content-box !important;
	-ms-box-sizing: content-box !important;
	box-sizing: content-box !important;
	outline: 0
}

.am-password-handy input:focus {
	position: absolute;
	opacity: .01;
	padding: 0 50px 0 200px !important;
	left: -300px
}

.am-password-handy .am-password-handy-security {
	display: -webkit-box !important;
	display: -ms-flexbox !important;
	display: box !important;
	padding: 0;
	background-color: #fff
}

.am-password-handy .am-password-handy-security li {
	-webkit-box-flex: 1;
	-ms-flex: 1;
	box-flex: 1;
	margin-right: -1px;
	border-right: 1px solid #DDD;
	overflow: hidden;
	text-align: center
}

.am-password-handy .am-password-handy-security li:last-child {
	margin-right: 0;
	border-right: 0
}

.am-password-handy .am-password-handy-security i {
	display: inline-block;
	width: 14px;
	overflow: hidden;
	line-height: 42px;
	font-style: normal;
	visibility: hidden
}

.am-password-handy .am-password-handy-security i:empty {
	margin: 16px 2px 0;
	width: 10px;
	height: 10px;
	-webkit-border-radius: 10px;
	border-radius: 10px;
	background-clip: padding-box;
	background-color: #000
}

*, :before, :after {
	text-size-adjust: none;
	-webkit-tap-highlight-color: rgba(0, 0, 0, 0)
}

body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code,
	form, fieldset, legend, input, textarea, p, blockquote, th, td {
	margin: 0;
	padding: 0
}

table {
	border-collapse: collapse;
	border-spacing: 0
}

fieldset, img {
	border: 0
}

address, caption, cite, code, dfn, em, strong, th, var {
	font-style: normal;
	font-weight: 300
}

li {
	list-style: none
}

caption, th {
	text-align: left
}

h1, h2, h3, h4, h5, h6 {
	font-weight: 300
}

q:before, q:after {
	content: ""
}

abbr, acronym {
	border: 0;
	font-variant: normal
}

sup {
	vertical-align: text-top
}

sub {
	vertical-align: text-bottom
}

input, textarea, select {
	font-family: inherit;
	font-size: inherit;
	font-weight: inherit
}

input[type=password], input[type=tel] {
	ime-mode: disabled
}

:focus {
	outline: 0
}

body, input, textarea, select, button {
	font-size: 16px;
	line-height: 1.5;
	color: #333;
	font-family: "Helvetica Neue", Helvetica, Arial, "Lucida Grande",
		sans-serif;
	font-weight: 300
}

html, body {
	height: 100%;
	-webkit-touch-callout: none;
	-ms-touch-callout: none
}

.am-content {
	padding-top: 15px
}

.am-content h5 {
	margin: 0;
	padding: 0
}

body {
	background-color: #f5f5f9
}

input {
	line-height: normal
}

a {
	color: #0AF;
	text-decoration: none
}

.fn-hide {
	display: none !important
}

.fn-left {
	float: left
}

.fn-right {
	float: right
}

.am-ft-pb-0 {
	padding-bottom: 0 !important
}

.am-ft-pb-10 {
	padding-bottom: 10px !important
}

.am-ft-xxl {
	font-size: 20px !important
}

.am-ft-md {
	font-size: 16px !important
}

.am-ft-s {
	font-size: 13px !important
}

.am-ft-black {
	color: #000 !important
}

.am-ft-gray {
	color: #999 !important
}

.am-ft-blue {
	color: #2861d7 !important
}

.am-ft-orange {
	color: #f60 !important
}

.am-ft-green {
	color: #490 !important
}

.am-ft-ellipsis {
	width: auto;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap
}

.am-flexbox {
	width: 100%;
	-webkit-box-sizing: border-box;
	-ms-box-sizing: border-box;
	box-sizing: border-box;
	text-align: left;
	display: -webkit-box !important;
	display: -ms-flexbox !important;
	display: box !important;
	-webkit-box-orient: horizontal;
	-ms-box-orient: horizontal;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	box-pack: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	box-align: center
}

.am-flexbox .am-flexbox-item {
	-webkit-box-sizing: border-box;
	-ms-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-box-flex: 1;
	-ms-flex: 1;
	box-flex: 1;
	margin-left: 15px;
	min-width: 20px
}

.am-flexbox-item:first-child {
	margin-left: 0
}

.am-header {
	display: -webkit-box;
	display: -ms-flexbox;
	display: box;
	width: 100%;
	position: relative;
	padding: 7px 0;
	-webkit-box-sizing: border-box;
	-ms-box-sizing: border-box;
	box-sizing: border-box;
	background: #1D222D;
	height: 50px;
	text-align: center;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	box-pack: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	box-align: center
}

.am-header h1 {
	-webkit-box-flex: 1;
	-ms-flex: 1;
	box-flex: 1;
	line-height: 18px;
	text-align: center;
	font-size: 18px;
	font-weight: 300;
	color: #fff
}

.am-header .title-sub {
	font-size: 13px;
	font-weight: 300
}

.am-header h1 a, .am-header h1 a:visited {
	color: #fff
}

.am-header .icon-arrow-back {
	text-indent: -300px;
	display: block;
	width: 12px;
	height: 12px;
	border-bottom: solid 1px #CCC;
	border-right: solid 1px #CCC;
	position: absolute;
	top: 50%;
	left: 11px;
	margin-top: -6px;
	-webkit-transform: rotate(135deg);
	-ms-transform: rotate(135deg);
	transform: rotate(135deg)
}

.am-header .am-header-reverse, .am-header .am-header-operate {
	position: absolute;
	top: 6px;
	text-align: center;
	color: #fff
}

.am-header .am-header-reverse {
	top: 9px;
	left: 5px
}

.am-header .am-header-operate {
	top: 12px;
	right: 5px;
	padding-right: 6px
}

.am-header .am-header-reverse-icon, .am-header .am-header-operate-icon {
	height: 32px;
	padding: 0 10px 0 0;
	color: #D3D3D2
}

.am-header .am-header-reverse-icon span {
	font-size: 14px;
	display: inline-block;
	padding: 6px 0 0 26px
}

.am-section {
	padding: 0 10px 10px;
	overflow: auto
}

.am-button {
	-webkit-box-sizing: border-box;
	-ms-box-sizing: border-box;
	box-sizing: border-box;
	display: inline-block;
	margin: 0;
	padding: 4px 8px;
	width: 100%;
	text-align: center;
	font-size: 18px;
	line-height: 2;
	border-radius: 4px;
	background-clip: padding-box
}

.am-button-blue {
	border: 1px solid #3EA3FE;
	color: #FFF;
	background: #3EA3FE
}

.am-list {
	-webkit-box-sizing: border-box;
	-ms-box-sizing: border-box;
	box-sizing: border-box;
	padding: 0 0 20px
}

.am-list .am-list-item {
	-webkit-box-sizing: border-box;
	-ms-box-sizing: border-box;
	box-sizing: border-box;
	display: block;
	position: relative;
	z-index: 10;
	margin: 0;
	padding: 10px 30px 10px 15px;
	width: 100%;
	border-top: 1px solid #e5e5e5;
	background-color: #fff;
	color: #000;
	text-align: left;
	vertical-align: middle
}

.am-list .am-list-item a {
	color: #000
}

.am-list .am-list-item:after {
	visibility: hidden;
	display: block;
	font-size: 0;
	content: " ";
	clear: both;
	height: 0
}

.am-list div.am-list-item {
	padding: 10px 15px
}

.am-list .am-list-item:last-child {
	border-bottom: 1px solid #e5e5e5
}

.am-list .am-list-item .am-list-item-title, .am-list .am-list-item .am-list-item-text
	{
	display: block
}

.am-list .am-list-item .am-list-item-title {
	float: left;
	width: 90px;
	color: #000
}

.am-list div.am-list-item .am-list-item-title {
	width: 112px
}

.am-list .am-list-item .am-list-item-text {
	text-align: right;
	width: auto;
	color: gray
}

.am-list div.am-list-item-form {
	-webkit-box-sizing: border-box;
	-ms-box-sizing: border-box;
	box-sizing: border-box;
	padding: 0 15px
}

.am-list div.am-list-item-form input[type=text], .am-list div.am-list-item-form input[type=email],
	.am-list div.am-list-item-form input[type=number], .am-list div.am-list-item-form input[type=tel],
	.am-list div.am-list-item-form input[type=password], .am-list div.am-list-item-form input[type=url],
	.am-list div.am-list-item-form input[type=search] {
	-webkit-box-sizing: border-box;
	-ms-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-appearance: none;
	-ms-appearance: none;
	padding: 8px 0;
	width: 100%;
	height: 45px;
	border: 0;
	outline: 0
}

.am-list div.am-list-item-form select {
	position: relative;
	z-index: 10;
	cursor: pointer;
	width: 100%;
	height: 45px;
	border: 0;
	background: transparent;
	-webkit-appearance: none;
	-ms-appearance: none;
	appearance: none
}

#ServerNum {
	text-align: center;
	color: #f5f5f9
}
</style>

	<header class="am-header">
	<h1>
		付款结果<br /> <span class="title-sub">jsj***@163.com</span>
	</h1>
	</header>



	<style>
.am-message {
	width: 100%;
	display: -webkit-box;
	display: -ms-flexbox;
	display: box;
	-webkit-box-align: center;
	-ms-flex-align: center;
	box-align: center;
	-webkit-box-sizing: border-box;
	-ms-box-sizing: border-box;
	box-sizing: border-box;
	min-height: 50px;
	position: relative;
	padding: 20px 15px 20px 55px;
	margin-bottom: 10px;
	color: #333;
	background: #fff;
	border-bottom: 1px #e5e5e5 solid;
	font-weight: 700;
}

.am-message p {
	clear: both;
	margin: 0;
	padding: 0;
}

.am-message-icon {
	position: absolute;
	width: 25px;
	height: 25px;
	top: 20px;
	left: 15px;
}

.am-message .am-ft-gray {
	font-weight: 300;
	font-size: 14px;
}

.recommend {
	min-height: 260px;
	margin-top: 10px;
	width: 100%;
}

.fm-action {
	margin-bottom: 10px;
	font-size: 14px;
}

.icon {
	display: inline-block;
	background-repeat: no-repeat;
}

.icon-tips-wrong, .icon-tips-right, .icon-tips-wait, .icon-tips-info {
	width: 25px;
	height: 25px;
	background-size: 25px 25px;
}

.icon-tips-right {
	background-image:
		url(https://i.alipayobjects.com/i/ecmng/png/201501/4A3AkQ9evd.png);
}
</style>
	<div class="J-pay-loading am-loading">
		<div class="am-loading-text fn-hide">
			<i class="icon-loading"></i> <span class="am-loading-icon"></span>
			支付确认中请稍后...
		</div>
	</div>
	<div class="J-pay-result">
		<input type="hidden" name="params"
			value="{&quot;server_param&quot;:&quot;c2hhcmVkX3RhaXI9ZmFsc2U7Yml6X3R5cGU9dHJhZGU7dHJhZGVfbm89MjAxNTA3MTkyMTAwMTAwMTQ4MDA3Mzk4MzQ2NDt1c2VyX2lkPTIwODgxMDIyNjY5NzI0ODM7&quot;,&quot;shared_tair&quot;:&quot;false&quot;}" />
		<div class="J-wait am-message am-message-wait fn-hide">
			<div class="am-message-icon">
				<i class="icon icon-tips-wait"></i>
			</div>
			<p>
				<span class="J-msg-title fn-hide"></span> <span
					class="J-msg-content">付款结果确认中，请登录账单详情</span>
			</p>
		</div>
		<div class="J-success am-message am-message-success">
			<div class="am-message-icon">
				<i class="icon icon-tips-right" title="成功"></i>
			</div>
			<p>
				<span class="J-msg-title"></span> <span class="J-msg-content">付款成功</span>
			</p>
		</div>
		<div class="J-error am-message am-message-error fn-hide">
			<div class="am-message-icon">
				<i class="icon icon-tips-wrong"></i>
			</div>
			<p>
				<span class="J-msg-title fn-hide"></span> <span
					class="J-msg-content">付款失败</span>
			</p>
		</div>
		<div class="am-content">
			<div class="am-section">
				<div class="J-switch fm-action fn-hide">
					<a
						href="https://mclient.alipay.com/h5/cashierSwitchChannel.htm?awid=RZ12vH6J0OQ21dRVsNbAq2nbS3UanemobileclientgwRZ12&session=RZ12a0tGkKSVVxtcPXNLSzda6okSOgmobilecashierRZ12&params=%7B%22server_param%22%3A%22c2hhcmVkX3RhaXI9ZmFsc2U7Yml6X3R5cGU9dHJhZGU7dHJhZGVfbm89MjAxNTA3MTkyMTAwMTAwMTQ4MDA3Mzk4MzQ2NDt1c2VyX2lkPTIwODgxMDIyNjY5NzI0ODM7%22%2C%22shared_tair%22%3A%22false%22%7D"
						class="am-button am-button-blue"
						seed="need_pay_query-switchChannel">选择其他付款方式</a>
				</div>
				<div class="J-return-link fn-hide">
					<a href="#" class="am-button am-button-blue"
						seed="need_pay_query-return">返回商户</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>