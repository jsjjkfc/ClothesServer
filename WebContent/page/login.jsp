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
				style="color: #fff"></i>登录<i class="ui-icon-home"
				style="float: right; color: #fff"></i>
		</h1>
	</div>

	<section class="ui-container">
	<div class="ui-form ">
		<form action="#" style="margin-top: 17px" autocomplete="off"
			id="login">
			<div class="ui-form-item ui-form-item-pure ui-border-b ui-border-t">
				<input type="text" placeholder="请输入您的用户名" name="name" id="userName"
					style="height: 45px;"> <a href="#" class="ui-icon-close"
					id="clearName"></a>
			</div>
			<span class="ui-form-item ui-form-item-pure ui-border-b"
				id="validateName"
				style="max-width: 640px; display: none; font-size: 14px; height: 30px; line-height: 30px; color: #f75549"><i
				class="ui-icon-info-block"
				style="font-size: 25px; height: 30px; line-height: 30px; display: inline-block; color: #f75549"></i>用户名不能为空</span>
			<div class="ui-form-item ui-form-item-pure ui-border-b">
				<input type="text" placeholder="请输入您的密码" name="pwd" id="password"
					style="height: 45px;"> <a href="#" class="ui-icon-close"
					id="clearPwd"></a>
			</div>
			<span class="ui-form-item ui-form-item-pure ui-border-b"
				id="validatePwd"
				style="max-width: 640px; display: none; font-size: 14px; height: 30px; line-height: 30px; color: #f75549"><i
				class="ui-icon-info-block"
				style="font-size: 25px; height: 30px; line-height: 30px; display: inline-block; color: #f75549"></i>密码不能为空</span>
			<div style="height: 55px"></div>
			<div id="warn" class="ui-poptips ui-poptips-warn"
				style="display: none">
				<div class="ui-poptips-cnt">
					<i></i>用户名或密码不正确
				</div>
			</div>
			<div class="ui-btn-wrap">
				<button class="ui-btn-lg ui-btn-primary" type="button" id="sub">登录</button>
			</div>
			<div class="ui-btn-wrap">
				<button class="ui-btn-lg ui-btn-primary" disabled>取消</button>
			</div>
			<div class="ui-btn-wrap">
				<span style="float: right;"><a href="javascript:;"
					style="color: #004477">免费注册</a></span>
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
		$('ul li').click(function() {
			location.href = $(this).data('href');
		});
		$('.ui-header .ui-btn').click(function() {
			location.href = 'index.html';
		});
		var ok1 = false;
		var ok2 = false;
		$("#clearName").click(function() {
			$('input[name="name"]').val("");
			$('input[name="name"]').attr("value", "");
			ok1 = false;
		});
		$("#clearPwd").click(function() {
			$('input[name="pwd"]').val("");
			$('input[name="pwd"]').attr("value", "");
			ok2 = false;
		});
		var timer, timer1;
		$('input[name="name"]').focus(function() {
			$("#clearName").css("display", "block");
			$(this).bind("keydown", function() {
				var name = $(this).val();
				if (name != "") {
					$("#clearName").css("display", "block");
				}
			});
			$("#validateName").css("display", "none");
		}).blur(function() {
			timer = setTimeout($.proxy(function() {
				$("#clearName").css("display", "none");
				var name = $(this).val();
				if (name != "") {
					ok1 = true;
				} else {
					$("#validateName").css("display", "block");
					ok1 = false;
				}
			}, this), 250);
		});
		$('input[name="pwd"]').focus(function() {
			$(this).attr("type", "password");
			$("#clearPwd").css("display", "block");
			$(this).bind("keydown", function() {
				var pwd = $(this).val();
				if (pwd != "") {
					$("#clearPwd").css("display", "block");
				}
			});
			$("#validatePwd").css("display", "none");
		}).blur(function() {
			timer1 = setTimeout($.proxy(function() {
				$("#clearPwd").css("display", "none");
				var name = $(this).val();
				if (name != "") {
					ok2 = true;
				} else {
					$("#validatePwd").css("display", "block");
					ok2 = true;
				}
			}, this), 250);
		});
		var options = {
			//定义返回JSON数据，还包括xml和script格式
			dataType : 'text',
			type : 'post',
			url : "/ClothesServer/account/login",
			beforeSend : function() {
			},
			success : function(data) {
				if (data == "success_0") {
					location.href = '/ClothesServer/page/supplier_manager.jsp';
				} else if (data == "success_1") {
					location.href = '/ClothesServer/backstage.jsp';
				} else if (data == "success_2") {
					location.href = '/ClothesServer/index.jsp';
				} else {
					$("#warn")
							.html(
									'<div class="ui-poptips-cnt"><i></i>用户名或密码不正确</div>');
					$("#warn").css("display", "block");
					$('#warn').delay(2000).hide(0);
				}
			}
		};

		// ajaxSubmit
		$("#sub")
				.click(
						function() {
							if ($('input[name="pwd"]').val() != "") {
								ok2 = true;
							}
							// ajaxForm
							if (ok1 && ok2) {
								$("#login").ajaxSubmit(options);
							} else {
								$("#warn")
										.html(
												'<div class="ui-poptips-cnt"><i></i>请输入用户名和密码</div>');
								$("#warn").css("display", "block");
								$('#warn').delay(2000).hide(0);
							}
						});
	</script>
</body>
</html>