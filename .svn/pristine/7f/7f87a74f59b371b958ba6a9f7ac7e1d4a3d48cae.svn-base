<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="format-detection" content="telephone=no">
<title>账号注册</title>
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
				style="color: #fff"></i>用户注册<i class="ui-icon-home"
				style="float: right; color: #fff"></i>
		</h1>
	</div>

	<section class="ui-container">
	<div class="ui-form ">
		<form action="#" style="margin-top: 17px" method="post" id="register">
			<div class="ui-form-item ui-form-item-pure ui-border-b ui-border-t">
				<input type="text" placeholder="请输入您的用户名" name="name"
					style="height: 45px;"> <a href="#" class="ui-icon-close"
					id="clearName" style="display: none"></a> <input type="hidden"
					name="openid" value="${openid}">
			</div>
			<span class="ui-form-item ui-form-item-pure ui-border-b"
				id="validateName"
				style="max-width: 640px; display: none; font-size: 14px; height: 30px; line-height: 30px; color: #f75549"><i
				class="ui-icon-info-block"
				style="font-size: 25px; height: 30px; line-height: 30px; display: inline-block; color: #f75549"></i>该用户名已被使用</span>
			<div class="ui-form-item ui-form-item-pure ui-border-b">
				<input type="password" placeholder="请输入您的密码" name="password"
					style="height: 45px;"> <a href="#" style="display: none"
					class="ui-icon-close" id="clearPwd"></a>
			</div>
			<div class="ui-form-item ui-form-item-pure ui-border-b">
				<input type="password" placeholder="请再次确认您的密码"
					name="passwordConfirm" style="height: 45px;"> <a href="#"
					class="ui-icon-close" id="clearConPwd" style="display: none"></a>
			</div>
			<span class="ui-form-item ui-form-item-pure ui-border-b"
				id="validatePwd"
				style="max-width: 640px; display: none; font-size: 14px; height: 30px; line-height: 30px; color: #f75549"><i
				class="ui-icon-info-block"
				style="font-size: 25px; height: 30px; line-height: 30px; display: inline-block; color: #f75549"></i>两次输入的密码不一致</span>
			<div style="height: 55px"></div>
			<div id="warn" class="ui-poptips ui-poptips-warn"
				style="display: none">
				<div class="ui-poptips-cnt">
					<i></i>请正确填写注册信息
				</div>
			</div>
			<div class="ui-btn-wrap">
				<button id="sub" class="ui-btn-lg ui-btn-primary" type="button">注册</button>
			</div>
			<div class="ui-btn-wrap">
				<button class="ui-btn-lg ui-btn-primary" disabled>取消</button>
			</div>
		</form>
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
		$(document)
				.ready(
						function() {
							var ok1 = false;
							var ok2 = false;
							$('ul li').click(function() {
								location.href = $(this).data('href');
							});
							$('.ui-icon-home').click(function() {
								location.href = '/ClothesServer/index.jsp';
							});
							$("#clearName").click(function() {
								$('input[name="name"]').val("");
								$('input[name="name"]').attr("value", "");
								ok1 = false;
								return false;
							});
							$("#clearConPwd").click(
									function() {
										$('input[name="passwordConfirm"]').val(
												"");
										$('input[name="passwordConfirm"]')
												.attr("value", "");
										ok2 = false;
										return false;
									});
							$("#clearPwd").click(function() {
								$('input[name="password"]').val("");
								$('input[name="password"]').attr("value", "");
								ok2 = false;
								return false;
							});
							var timer, timer1, timer2;
							$('input[name="name"]')
									.focus(
											function() {
												$("#clearName").css("display",
														"block");
												$("#validateName").css(
														"display", "none");
											})
									.bind(
											"keydown",
											function() {
												var name = $(this).val();
												if (name != "") {
													$("#clearName").css(
															"display", "block");
												}
											})
									.blur(
											function() {
												timer = setTimeout(
														$
																.proxy(
																		function() {

																			$(
																					"#clearName")
																					.css(
																							"display",
																							"none");
																			var name = $(
																					this)
																					.val();
																			if (name != "") {
																				$
																						.ajax({
																							url : "",//这个就是请求地址对应sAjaxSource
																							data : {
																								"name" : JSON
																										.stringify(name)
																							},//这个是把datatable的一些基本数据传给后台,比如起始位置,每页显示的行数
																							type : 'post',
																							dataType : 'text',
																							async : true,
																							success : function(
																									result) {
																								if (result == "0") {
																									$(
																											"#validateName")
																											.css(
																													"color",
																													"#0baae4");
																									$(
																											"#validateName")
																											.html(
																													'<i class="ui-icon-checked" style="font-size: 25px; height: 30px; line-height: 30px; display: inline-block; color: #0baae4"></i>恭喜！该用户名可以使用！');
																									$(
																											"#validateName")
																											.css(
																													"display",
																													"block");
																									ok1 = true;
																								} else {
																									$(
																											"#validateName")
																											.css(
																													"color",
																													"#f75549");
																									$(
																											"#validateName")
																											.html(
																													'<i class="ui-icon-info-block" style="font-size: 25px; height: 30px; line-height: 30px; display: inline-block; color: #f75549"></i>抱歉，该用户名已被占用');
																									$(
																											"#validateName")
																											.css(
																													"display",
																													"block");
																									ok1 = false;
																								}
																							},
																							error : function(
																									msg) {
																								alert(msg.statusText);
																								ok1 = false;
																							}
																						});
																			} else {
																				$(
																						"#validateName")
																						.css(
																								"color",
																								"#f75549");
																				$(
																						"#validateName")
																						.html(
																								'<i class="ui-icon-info-block" style="font-size: 25px; height: 30px; line-height: 30px; display: inline-block; color: #f75549"></i>用户名不能为空！');
																				$(
																						"#validateName")
																						.css(
																								"display",
																								"block");
																				ok1 = false;
																			}

																		}, this),
														250);
											});
							$('input[name="passwordConfirm"]')
									.focus(
											function() {
												$("#clearConPwd").css(
														"display", "block");
												$(this)
														.bind(
																"keydown",
																function() {
																	var cfmPwd = $(
																			this)
																			.val();
																	if (cfmPwd != "") {
																		$(
																				"#clearConPwd")
																				.css(
																						"display",
																						"block");
																	}
																});
												$("#validatePwd").css(
														"display", "none");
											})
									.blur(
											function() {
												timer1 = setTimeout(
														$
																.proxy(
																		function() {

																			$(
																					"#clearConPwd")
																					.css(
																							"display",
																							"none");
																			var pwd = $(
																					'input[name="password"]')
																					.val();
																			var cfmPwd = $(
																					this)
																					.val();
																			if (pwd == "") {
																				$(
																						"#validatePwd")
																						.html(
																								'<i class="ui-icon-info-block" style="font-size: 25px; height: 30px; line-height: 30px; display: inline-block; color: #f75549"></i>请输入密码');
																				$(
																						"#validatePwd")
																						.css(
																								"display",
																								"block");
																				ok2 = false;
																			} else {
																				if (pwd == cfmPwd) {
																					ok2 = true;
																				} else {
																					$(
																							"#validatePwd")
																							.html(
																									'<i class="ui-icon-info-block" style="font-size: 25px; height: 30px; line-height: 30px; display: inline-block; color: #f75549"></i>两次密码输入不一致');
																					$(
																							"#validatePwd")
																							.css(
																									"display",
																									"block");
																					ok2 = false;
																				}
																			}

																		}, this),
														250);
											});
							$('input[name="password"]')
									.focus(
											function() {
												$("#clearPwd").css("display",
														"block");
												$(this)
														.bind(
																"keydown",
																function() {
																	var pwd = $(
																			this)
																			.val();
																	if (pwd != "") {
																		$(
																				"#clearPwd")
																				.css(
																						"display",
																						"block");
																	}
																});
												$("#validatePwd").css(
														"display", "none");
											})
									.blur(
											function() {
												timer2 = setTimeout(
														$
																.proxy(
																		function() {
																			$(
																					"#clearPwd")
																					.css(
																							"display",
																							"none");
																			var pwd = $(
																					this)
																					.val();
																			var cfmPwd = $(
																					'input[name="passwordConfirm"]')
																					.val();
																			if (cfmPwd != "") {
																				if (pwd != cfmPwd) {
																					$(
																							"#validatePwd")
																							.html(
																									'<i class="ui-icon-info-block" style="font-size: 25px; height: 30px; line-height: 30px; display: inline-block; color: #f75549"></i>两次密码输入不一致');
																					$(
																							"#validatePwd")
																							.css(
																									"display",
																									"block");
																					ok2 = false;
																				}
																			}
																		}, this),
														250);
											});

							var options = {
								//定义返回JSON数据，还包括xml和script格式
								dataType : 'text',
								type : 'post',
								url : "",
								beforeSend : function() {
								},
								success : function(data) {

								}
							};

							// ajaxSubmit
							$("#sub").click(function() {
								// ajaxForm
								if (ok1 && ok2) {
									$("#register").ajaxSubmit(options);
								} else {
									$("#warn").css("display", "block");
									$('#warn').delay(2000).hide(0);
								}
							});
						});
	</script>
</body>
</html>