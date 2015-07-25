<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<title>服装后台管理系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!-- basic styles -->

<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="css/backstage/font-awesome.min.css" />
<link rel="stylesheet" href="css/backstage/chosen.css" />
<!-- page specific plugin styles -->
<!-- ace styles -->

<link rel="stylesheet" href="css/backstage/ace.min.css" />
<link rel="stylesheet" href="css/backstage/ace-rtl.min.css" />
<link rel="stylesheet" href="css/backstage/ace-skins.min.css" />
<!-- inline styles related to this page -->
<!-- ace settings handler -->
<script src="js/ace/ace-extra.min.js"></script>
<!-- 图片展示组件 -->
<link rel="stylesheet" type="text/css" href="css/strip/strip.css" />
<!-- 图片墙展示 -->
<link rel="stylesheet" type="text/css"
	href="css/backstage/jquery.gridly.css">
<script src="js/jquery/jquery-1.11.3.min.js"></script>
<style type="text/css">
.example {
	position: relative;
}

.example .brick {
	opacity: 1;
	cursor: pointer;
	position: relative;
}

.example .brick .delete {
	display: block;
	color: #FFF;
	background: rgba(255, 255, 255, 0.2);
	width: 30px;
	height: 30px;
	top: 0;
	right: 0;
	position: absolute;
	font-size: 16px;
	text-align: center;
	line-height: 30px;
	text-align: center
}

.example .brick.small {
	width: 100px;
	height: 100px;
}

.example .brick.large {
	width: 150px;
	height: 150px;
}

.example .brick.dragging {
	opacity: 0.8;
}
</style>
</head>

<body>
	<div class="navbar navbar-default" id="navbar">
		<script type="text/javascript">
			try {
				ace.settings.check('navbar', 'fixed')
			} catch (e) {
			}
		</script>

		<div class="navbar-container" id="navbar-container">
			<div class="navbar-header pull-left">
				<a href="#" class="navbar-brand"> <small> <i
						class="icon-leaf"></i> 服装后台管理系统
				</small>
				</a>
				<!-- /.brand -->
			</div>
			<!-- /.navbar-header -->
			<div class="navbar-header pull-right" role="navigation">
				<ul class="nav ace-nav">
					<li class="green"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <i
							class="icon-envelope icon-animated-vertical"></i> <span
							class="badge badge-success">0</span>
					</a>

						<ul
							class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
							<li class="dropdown-header"><i class="icon-envelope-alt"></i>
								消息数 0</li>
							<!-- <li><a href="#"> <img src="" class="msg-photo"
									alt="Bob's Avatar" /> <span class="msg-body"> <span
										class="msg-title"> <span class="blue">Bob:</span>
											Nullam quis risus eget urna mollis ornare ...
									</span> <span class="msg-time"> <i class="icon-time"></i> <span>3:15
												pm</span>
									</span>
								</span>
							</a></li> -->

							<li><a href="javascript:;"> See all messages <i
									class="icon-arrow-right"></i>
							</a></li>
						</ul></li>

					<li class="light-blue"><a data-toggle="dropdown" href="#"
						class="dropdown-toggle"> <img class="nav-user-photo"
							src="image/avatar2.png" alt="Jason's Photo" /> <span
							class="user-info"> <small>欢迎使用,</small> admin
						</span> <i class="icon-caret-down"></i>
					</a>

						<ul
							class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
							<li><a href="#"> <i class="icon-cog"></i> 设置
							</a></li>

							<li><a href="#"> <i class="icon-user"></i> 个人信息
							</a></li>

							<li class="divider"></li>

							<li><a href="#"> <i class="icon-off"></i> 注销
							</a></li>
						</ul></li>
				</ul>
				<!-- /.ace-nav -->
			</div>
			<!-- /.navbar-header -->
		</div>
		<!-- /.container -->
	</div>

	<div class="main-container" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.check('main-container', 'fixed')
			} catch (e) {
			}
		</script>
		<div class="alert alert-info"
			style="z-index: 99999; position: absolute; top: 50%; left: 50%; display: none;">
			<button type="button" class="close" data-dismiss="alert">
				<i class="icon-remove"></i>
			</button>
			<strong>恭喜!</strong> 数据插入成功！ <br />
		</div>
		<div class="alert alert-danger"
			style="z-index: 99999; position: absolute; top: 50%; left: 50%; display: none;">
			<button type="button" class="close" data-dismiss="alert">
				<i class="icon-remove"></i>
			</button>
			<strong>Sorry!</strong> 数据插入失败！ <br />
		</div>
		<div class="main-container-inner">
			<a class="menu-toggler" id="menu-toggler" href="#"> <span
				class="menu-text"></span>
			</a>

			<div class="sidebar" id="sidebar">
				<script type="text/javascript">
					try {
						ace.settings.check('sidebar', 'fixed')
					} catch (e) {
					}
				</script>

				<!-- #sidebar-shortcuts -->
				<ul class="nav nav-list">
					<li class="active open"><a href="#" class="dropdown-toggle">
							<i class="icon-list"></i> <span class="menu-text"> 数据管理 </span> <b
							class="arrow icon-angle-down"></b>
					</a>

						<ul class="submenu">
							<li class="active"><a href="#"> <i
									class="icon-double-angle-right"></i> 商品管理
							</a></li>
						</ul></li>


				</ul>
				<script type="text/javascript">
					var type = "${user.type}";
					var html;
					if (type == "0") {
					} else if (type == "1") {

					} else {
						//跳转至个人信息页
						//location.href = "";
					}
				</script>
				<!-- /.nav-list -->

				<div class="sidebar-collapse" id="sidebar-collapse">
					<i class="icon-double-angle-left"
						data-icon1="icon-double-angle-left"
						data-icon2="icon-double-angle-right"></i>
				</div>

				<script type="text/javascript">
					try {
						ace.settings.check('sidebar', 'collapsed')
					} catch (e) {
					}
				</script>
			</div>

			<div class="main-content">
				<div class="breadcrumbs" id="breadcrumbs">
					<script type="text/javascript">
						try {
							ace.settings.check('breadcrumbs', 'fixed')
						} catch (e) {
						}
					</script>

					<ul class="breadcrumb" style="margin-top: 10px;">
						<li><i class="icon-home home-icon"></i> <a href="#">主页</a></li>

						<li><a href="#">数据管理</a></li>
						<li class="active">商品管理</li>
					</ul>
					<!-- .breadcrumb -->

					<div class="nav-search" id="nav-search">
						<form class="form-search">
							<span class="input-icon"> <input type="text"
								placeholder="搜索" class="nav-search-input" id="nav-search-input"
								autocomplete="off" /> <i class="icon-search nav-search-icon"></i>
							</span>
						</form>
					</div>
					<!-- #nav-search -->
				</div>

				<div class="page-content">
					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->

							<div class="row">
								<div class="col-xs-12">
									<div class="table-responsive"></div>
									<!-- /.table-responsive -->
								</div>
								<!-- /span -->
							</div>
							<!-- /row -->

							<div class="row">
								<div class="col-xs-12">
									<h3 class="header smaller lighter blue">商品管理</h3>
									<div class="table-header">商品详情列表</div>

									<div class="table-responsive">
										<table id="sample-table-2"
											class="table table-striped table-bordered table-hover">
											<h4 class="pink" style="float: right; margin-right: 10px">
												<i class="icon-plus blue"></i> <a href="#modal-table"
													role="button" class="green" data-toggle="modal"> 添加商品 </a>
											</h4>
											<thead>
												<tr>
													<th class="center"><label> <input
															type="checkbox" class="ace" /> <span class="lbl"></span>
													</label></th>
													<th>商品编号</th>
													<th>供应商</th>
													<th class="hidden-480">商品类型</th>

													<th>商品名称</th>
													<th class="hidden-480">商品描述</th>
													<th>商品价格</th>
													<th>促销价格</th>
													<th class="hidden-480">商品图片</th>

													<th class="hidden-480">编辑</th>
												</tr>
											</thead>
											<tbody>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<div id="modal-table" class="modal fade" tabindex="-1">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header no-padding">
											<div class="table-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">
													<span class="white">&times;</span>
												</button>
												添加商品信息
											</div>
										</div>
										<div class="modal-body">
											<form class="form-horizontal" id="prductForm"
												enctype="multipart/form-data">
												<div class="form-group">
													<input type="text" name="id" id="productId"
														style="display: none" /> <label for="inputSupplier"
														class="col-sm-3 control-label no-padding-right">
														供应商 </label>
													<div class="col-sm-9">
														<input name="supplier" class="col-xs-10 col-sm-9"
															id="inputSupplier" type="text" style="display: none" />
														<input id="supplierName" class="col-xs-10 col-sm-9"
															type="text" readonly="readonly" />
													</div>
												</div>
												<div class="form-group">
													<label for="inputType"
														class="col-sm-3 control-label no-padding-right">
														商品类型 </label>
													<div class="col-sm-9">
														<select name="type" class="chosen-select" id="inputType"
															data-placeholder="选择商品类型... ">
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label no-padding-right"
														for="inputName"> 商品名称 </label>

													<div class="col-sm-9">
														<input type="text" name="name" id="inputName"
															placeholder="" class="col-xs-10 col-sm-9" />
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label no-padding-right"
														for="inputDesc"> 商品描述 </label>

													<div class="col-sm-9">
														<input type="text" id="inputDesc" placeholder=""
															name="desc" class="col-xs-10 col-sm-9" />
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label no-padding-right"
														for="inputPrice"> 商品价格 </label>

													<div class="col-sm-9">
														<input type="text" id="inputPrice" placeholder=""
															name="price" class="col-xs-10 col-sm-9" />
														<div class='col-sm-3'
															style="color: #d16e6c; display: none">请输入数字</div>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label no-padding-right"
														for="inputSalePrice"> 促销价格 </label>

													<div class="col-sm-9">
														<input type="text" id="inputSalePrice" placeholder=""
															name="salePrice" class="col-xs-10 col-sm-9" /> <span
															class='col-sm-3' style="color: #d16e6c; display: none">请输入数字</span>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label no-padding-right"
														for="inputPic"> 商品图片 </label>

													<div class="col-sm-8">
														<input type="text" id="inputPics" placeholder=""
															name="pics" style="display: none" />
														<section class='example'>
														<div class='gridly'></div>
														</section>
														<div id="container" class="col-xs-7"
															style="padding-left: 0px">
															<a class="btn btn-sm btn-primary" id="pickfiles" href="#">
																<i class="glyphicon glyphicon-plus"></i> <sapn>选择文件</sapn>
															</a>
														</div>
														<div class="col-xs-12">
															<ul class="ace-thumbnails" id="imageListtemp">
															</ul>
														</div>
													</div>
													<div class="col-sm-1"></div>
												</div>
												<div class="form-group">
													<div class="col-xs-12">
														<div class="col-sm-6 center">
															<button class="btn btn-sm btn-success" id="form-submit">
																<i class="icon-plus white"></i>添加
															</button>
														</div>
														<div class="col-xs-6 center">
															<button class="btn btn-sm btn-danger"
																data-dismiss="modal">
																<i class="icon-remove"></i> 关闭
															</button>
														</div>
													</div>
												</div>
											</form>
										</div>
									</div>
									<!-- /.modal-content -->
								</div>
								<!-- /.modal-dialog -->
							</div>
							<!-- PAGE CONTENT ENDS -->
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.page-content -->
			</div>
			<!-- /.main-content -->

			<div class="ace-settings-container" id="ace-settings-container">
				<div class="btn btn-app btn-xs btn-warning ace-settings-btn"
					id="ace-settings-btn">
					<i class="icon-cog bigger-150"></i>
				</div>

				<div class="ace-settings-box" id="ace-settings-box">
					<div>
						<div class="pull-left">
							<select id="skin-colorpicker" class="hide">
								<option data-skin="default" value="#438EB9">#438EB9</option>
								<option data-skin="skin-1" value="#222A2D">#222A2D</option>
								<option data-skin="skin-2" value="#C6487E">#C6487E</option>
								<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
							</select>
						</div>
						<span>&nbsp; 选择皮肤</span>
					</div>

					<div>
						<input type="checkbox" class="ace ace-checkbox-2"
							id="ace-settings-navbar" /> <label class="lbl"
							for="ace-settings-navbar">固定导航栏</label>
					</div>

					<div>
						<input type="checkbox" class="ace ace-checkbox-2"
							id="ace-settings-sidebar" /> <label class="lbl"
							for="ace-settings-sidebar">固定侧边栏</label>
					</div>

					<div>
						<input type="checkbox" class="ace ace-checkbox-2"
							id="ace-settings-breadcrumbs" /> <label class="lbl"
							for="ace-settings-breadcrumbs">固定侧边栏和导航栏</label>
					</div>

					<div>
						<input type="checkbox" class="ace ace-checkbox-2"
							id="ace-settings-rtl" /> <label class="lbl"
							for="ace-settings-rtl">从右往左排列</label>
					</div>

					<div>
						<input type="checkbox" class="ace ace-checkbox-2"
							id="ace-settings-add-container" /> <label class="lbl"
							for="ace-settings-add-container"> 窄屏模式 </label>
					</div>
				</div>
			</div>
			<!-- /#ace-settings-container -->
		</div>
		<!-- /.main-container-inner -->

		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="icon-double-angle-up icon-only bigger-110"></i>
		</a>
	</div>
	<!-- /.main-container -->

	<!-- basic scripts -->

	<!--[if !IE]> -->



	<!-- <![endif]-->
	<script type="text/javascript">
		if ("ontouchend" in document)
			document
					.write("<script src='js/jquery/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="bootstrap/js/bootbox.min.js"></script>
	<script src="js/ace/typeahead-bs2.min.js"></script>
	<!-- page specific plugin scripts -->
	<script src="js/jquery/jquery.dataTables.min.js"></script>
	<script src="js/jquery/jquery.dataTables.bootstrap.js"></script>
	<script src="js/jquery/chosen.jquery.min.js"></script>
	<script src="js/jquery/jquery.form.js"></script>
	<!-- ace scripts -->
	<script src="js/ace/ace-elements.min.js"></script>
	<script src="js/ace/ace.min.js"></script>
	<!-- 图片上传组件 -->
	<script src="js/plupload/plupload.full.min.js"></script>
	<script
		src="js/plupload/jquery.plupload.queue/jquery.plupload.queue.js"></script>
	<script src="js/plupload/i18n/zh_CN.js"></script>
	<script src="js/plupload/moxie.js"></script>
	<!-- 七牛上传 -->
	<script src="js/qiniu.js"></script>
	<script src="js/strip/strip.min.js"></script>
	<script src="js/jquery/jquery.gridly.js"></script>
	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		//用于存储商品数据的全局变量
		var productDatas;
		//用于存储商家名称
		var supplierName;
		//用于存储服务器返回图片路径的数组
		var picpathes = new Array();
		//用于存储修改界面的图片展示
		var showpicpathes = new Array();
		$(document).ready(function() {

			//点击添加商品按钮绑定事件
			$("h4>a").click(function() {
				resetForm();
				initForm("/ClothesServer/home/addProduct", "添加商品信息");
			});

		});
		/* $("#modal-close").click(function() {
			resetForm();
		}); */
		//重置清空表单
		function resetForm() {
			$("#modal-table").modal('hide');
			$("#modal-table").find("input").val("");
			$("#supplierName").val(productDatas.aaData[0].supplier.desc);
			$('#inputSupplier').val(productDatas.aaData[0].supplier.supplierId);
			$("#modal-table").find("#inputSalePrice").next().text('请输入数字').css(
					"color", "#d16e6c").hide();
			$("#modal-table").find("#inputPrice").next().text('请输入数字').css(
					"color", "#d16e6c").hide();
			resetImagePreview();
			picpathes = new Array();
			showpicpathes = new Array();
			$('.gridly').html("");
			$('.gridly').attr("height", "0");
		}
		function resetImagePreview() {
			$('#imageListtemp').html("");
		}
		//初始化form表单
		function initForm(posturl, title, prodata) {
			var ok1 = false;
			var ok2 = false;
			$('input[name="price"]').focus(function() {
				$(this).next().text('请输入价格').css("color", "#64a6bc").show();
			}).blur(
					function() {
						if ($.isNumeric($(this).val())) {
							$(this).next().text('输入成功').css("color", "#64a6bc")
									.show();
							ok1 = true;
						} else {
							$(this).next().text("请输入数字")
									.css("color", "#d16e6c").show();
						}
					});
			$('input[name="salePrice"]').focus(function() {
				$(this).next().text('请输入价格').css("color", "#64a6bc").show();
			}).blur(
					function() {
						if ($.isNumeric($(this).val())) {
							$(this).next().text('输入成功').css("color", "#64a6bc")
									.show();
							ok2 = true;
						} else {
							$(this).next().text("请输入数字")
									.css("color", "#d16e6c").show();
						}
					});
			$("#modal-table")
					.find(".table-header")
					.html(
							"<button type='button' class='close' data-dismiss='modal' aria-hidden='true'><span class='white'>&times;</span></button>"
									+ title);
			var options = {
				//定义返回JSON数据，还包括xml和script格式
				dataType : 'text',
				type : 'post',
				url : /* "/ClothesServer/home/addProduct" */posturl,
				beforeSend : function() {
				},
				success : function(data) {
					if (data == "success") {
						$("#modal-table").modal('hide');
						resetForm();
						refreshTable();
						$('.alert.alert-info').show();
						$('.alert.alert-info').delay(2000).hide(0);
					} else {
						$("#modal-table").modal('hide');
						$('.alert.alert-danger').show().delay(2000).hide(0);
					}

				}
			};

			// ajaxSubmit
			$("#form-submit").click(function() {
				if (ok1 && ok2) {
					// ajaxForm
					/* $("#prductForm").ajaxForm(options); */
					$("#prductForm").ajaxSubmit(options);
				} else {
					bootbox.alert({
						buttons : {
							ok : {
								label : '确定',
								className : 'btn btn-primary'
							}
						},
						message : '添加信息有误！',
						callback : function() {
							$("#modal-table").modal('hide');//隐藏弹窗
						},
						title : ""
					});
				}
			});
			if (prodata != null) {
				ok1 = true;
				ok2 = true;
				resetForm();
				$('#form-submit').html('<i class="icon-pencil white"></i>更新');
				//重新加载select值，将该行商品数据填入弹出窗口
				$('#productId').val(prodata.productId);
				$('#inputType').chosen("destroy");
				//$('#inputSupplier').chosen("destroy");
				$('#inputType').val(prodata.type.typeId);
				$('#inputType').chosen({
					no_results_text : "未找到此供应商："
				});
				//$('#inputSupplier').chosen({
				//		no_results_text : "未找到此供应商："
				//	});
				$('#inputName').val(prodata.name);
				$('#inputName').attr("value", prodata.name);
				$('#inputDesc').val(prodata.desc);
				$('#inputDesc').attr("value", prodata.desc);
				$('#inputPrice').val(prodata.price);
				$('#inputPrice').attr("value", prodata.price);
				$('#inputSalePrice').val(prodata.salePrice);
				$('#inputSalePrice').attr("value", prodata.salePrice);
				//加载图片列表
				var pics = prodata.picPathes;
				$
						.each(
								pics,
								function(i, path) {
									var brick = '<div class="brick small"><img id="pic'
											+ i
											+ '" src="'
											+ path
											+ '" width="97%" height="97%" /> <a id="delpic'+i+'" class="example brick delete" href="#" style="color: #C0392B">&times;</a></div>';
									;
									showpicpathes.push(path);
									$('.gridly').append(brick);
									$("#pic" + i).click({
										msg : path
									}, function(e) {
										showImage(e.data.msg);
									});
									initgridly(path, "delpic" + i);
								});
				setgridly();
			} else {
				$('#form-submit').html('<i class="icon-plus white"></i>添加');
				resetForm();
			}
		}
		function edit(row) {
			var de = "data.aData.productId";
			var rowData = productDatas.aaData[row];
			initForm("/ClothesServer/home/updateProduct", "修改商品信息", rowData);
		}
		function refreshTable() {
			start = $("#sample-table-2").dataTable().fnSettings()._iDisplayStart;
			total = $("#sample-table-2").dataTable().fnSettings()
					.fnRecordsDisplay();
			window.location.reload();
			if ((total - start) == 1) {
				if (start > 0) {
					$("#sample-table-2").dataTable().fnPageChange('previous',
							true);
				}
			}
		}
		function del(id) {
			bootbox.confirm({
				buttons : {
					confirm : {
						label : '删除',
						className : 'btn btn-warning'
					},
					cancel : {
						label : '取消',
						className : 'btn btn-default'
					}
				},
				message : '确定删除此条数据？',
				callback : function(result) {
					if (result) {
						$.ajax({
							url : "/ClothesServer/home/deleteProduct",//这个就是请求地址对应sAjaxSource
							data : {
								"id" : JSON.stringify(id)
							},//这个是把datatable的一些基本数据传给后台,比如起始位置,每页显示的行数
							type : 'post',
							dataType : 'text',
							async : true,
							success : function(result) {
								if (result == "success") {
									bootbox.alert({
										buttons : {
											ok : {
												label : '确定',
												className : 'btn btn-primary'
											}
										},
										message : '删除成功！',
										callback : function() {
											refreshTable();
										},
										title : ""
									});

								} else {
									alert("删除失败");
								}
							},
							error : function(msg) {
								alert(msg.statusText);
							}
						});
					} else {
					}
				}
			//title: "bootbox confirm也可以添加标题哦",  
			});
		}

		jQuery(function($) {
			//获取供应商列表
			/* 		$.getJSON("/ClothesServer/home/supplier", function(data) {
							$.each(data, function(i, supplier) {
								$("#inputSupplier").append(
										"<option value='"+supplier.supplierId+"'>"
												+ supplier.desc + "</option>");
							});
							//初始化chosen插件
							$("#inputSupplier").chosen({
								no_results_text : "未找到此供应商："
							});
							
						}); */
			$.getJSON("/ClothesServer/home/type", function(data) {
				$.each(data, function(i, type) {
					$("#inputType").append(
							"<option value='"+type.typeId+"'>" + type.name
									+ "</option>");
				});
				//初始化chosen插件
				$("#inputType").chosen({
					no_results_text : "未找到此商品类型："
				});
				$('#modal-table').on(
						'shown.bs.modal',
						function() {
							$(this).find('.chosen-container').each(
									function() {
										$(this).find('a:first-child').css(
												'width', '313.875px');
										$(this).find('.chosen-drop').css(
												'width', '313.875px');
										$(this).find('.chosen-search input')
												.css('width', '303.875px');
									});
						});
			});

			var oTable1 = $('#sample-table-2')
					.dataTable(
							{
								"bStateSave" : true,//状态保存
								"bFilter" : false,
								"aoColumnDefs" : [ {
									sDefaultContent : '',
									aTargets : [ '_all' ]
								} ],
								"bAutoWidth" : true,//自动宽度
								"bProcessing" : false, // 是否显示取数据时的那个等待提示
								"bServerSide" : true,//这个用来指明是通过服务端来取数据
								"sAjaxSource" : "/ClothesServer/home/prdoucts",//这个是请求的地址
								"fnServerData" : retrieveData, // 获取数据的处理函数
								"oLanguage" : {
									"sLengthMenu" : "每页显示 _MENU_ 条记录",
									"sZeroRecords" : "对不起，查询不到任何相关数据",
									"sInfo" : "当前显示 _START_ 到 _END_ 条，共 _TOTAL_ 条记录",
									"sInfoEmtpy" : "找不到相关数据",
									"sInfoFiltered" : "数据表中共为 _MAX_ 条记录)",
									"sProcessing" : "正在加载中...",
									"sSearch" : "搜索",
									"sUrl" : "", //多语言配置文件，可将oLanguage的设置放在一个txt文件中，例：Javascript/datatable/dtCH.txt  
									"oPaginate" : {
										"sFirst" : "第一页",
										"sPrevious" : " 上一页 ",
										"sNext" : " 下一页 ",
										"sLast" : " 最后一页 "
									}
								}, //多语言配置  
								"aoColumns" : [
										{
											"bSortable" : false,
											"sClass" : "center"
										},
										{
											"mDataProp" : "productId",
											"sClass" : "text-center"

										},
										{
											"mDataProp" : "supplier.desc",
											"sClass" : "center"
										},
										{
											"mDataProp" : "type.name",
											"sClass" : "center"
										},
										{
											"mDataProp" : "name",
											"sClass" : "center"
										},
										{
											"mDataProp" : "desc",
											"bSortable" : false,
											"sClass" : "center"
										},
										{
											"mDataProp" : "price",
											"sClass" : "center"
										},
										{
											"mDataProp" : "salePrice",
											"sClass" : "center"
										},
										{
											"mDataProp" : "picPathes.0",
											"bSortable" : false,
											"sClass" : "center",
											"fnRender" : function(data) {
												var src = data.aData.picPathes;
												var count = 0;
												$.each(src, function(i, path) {
													if (i == 0) {
														src = path;
													}
													count = i + 1;
												});
												s = '<a href="javascript:;" onclick="showImages('
														+ data.iDataRow
														+ ')">'
														+ '<img src="'
														+ src
														+ '" class="msg-photo" width="50px" height="50px"/>'
														+ '<span class="badge badge-info" style="right:0px;top;0px;float:right;	margin-left: -10px;margin-top: -10px;">'
														+ count
														+ '</span>'
														+ '</a>';
												return s;
											}
										},
										{
											"bSortable" : false,
											"sClass" : "center",
											/* data : 当前单元格的数据 */
											"fnRender" : function(data) {
												var ss = '<div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">'
														+ '<a class="green" href="#modal-table" data-toggle="modal" onclick="edit('
														+ data.iDataRow
														+ ')" >'
														+ '<i class="icon-pencil bigger-130"></i>'
														+ '</a>'
														+ '<a class="red" href="javascript:;" onclick="del('
														+ data.aData.productId
														+ ')" >'
														+ '<i class="icon-trash bigger-130"></i>'
														+ '</a>'
														+ '</div>'
														+ '<div class="visible-xs visible-sm hidden-md hidden-lg">'
														+ '<div class="inline position-relative">'
														+ '<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">'
														+ '<i class="icon-caret-down icon-only bigger-120"></i>'
														+ '</button>'
														+ '<ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">'
														+ '<li>'
														+ '<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">'
														+ '<span class="green">'
														+ '<i class="icon-edit bigger-120"></i>'
														+ '</span>'
														+ '</a>'
														+ '</li>'
														+ '<li>'
														+ '<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">'
														+ '<span class="red">'
														+ '<i class="icon-trash bigger-120"></i>'
														+ '</span>'
														+ '</a>'
														+ '</li>'
														+ '</ul>'
														+ '</div>' + '</div>';
												return ss;
											}
										} ]
							});
			// 3个参数的名字可以随便命名,但必须是3个参数,少一个都不行
			function retrieveData(sSource111, aoData111, fnCallback111) {
				$.ajax({
					url : sSource111,//这个就是请求地址对应sAjaxSource
					data : {
						"aoData" : JSON.stringify(aoData111)
					},//这个是把datatable的一些基本数据传给后台,比如起始位置,每页显示的行数
					type : 'post',
					dataType : 'json',
					async : true,
					success : function(result) {
						//返回的数据存储到全局变量
						productDatas = result;
						fnCallback111(result);//把返回的数据传给这个方法就可以了,datatable会自动绑定数据的
						initTable();
					},
					error : function(msg) {
						alert(msg.statusText);
					}
				});
			}
		});
		function showImages(rowid) {
			var rowData = productDatas.aaData[rowid];
			var pics = rowData.picPathes;
			Strip.show(pics, {
				side : 'top',
				height : '600'
			});

		}
		function showImage(path) {
			Strip.show({
				url : path,
				options : {
					side : 'top',
					height : '600'
				}
			});
		}
		function initTable() {
			// Setup - add a text input to each footer cell
			$('#sample-table-2 tbody tr')
					.each(
							function(i) {
								var trs = $('#sample-table-2 tbody tr');
								var img = trs.eq(i).find("td").eq(8);

								/* var src = img.text();
														img.css("text-align", "center");
														img
																.text("")
																.append(
																		'<img src="'+src+'" class="msg-photo" width="50px" height="50px"/>'); */
								var checkbox = trs.eq(i).find("td").eq(0);
								checkbox.css("text-align", "center");
								checkbox
										.append('<label><input type="checkbox" class="ace" /><span class="lbl"></span></label>');
							});

			$('table th input:checkbox').on(
					'click',
					function() {
						var that = this;
						$(this).closest('table').find(
								'tr > td:first-child input:checkbox').each(
								function() {
									this.checked = that.checked;
									$(this).closest('tr').toggleClass(
											'selected');
								});

					});

			$('[data-rel="tooltip"]').tooltip({
				placement : tooltip_placement
			});
			function tooltip_placement(context, source) {
				var $source = $(source);
				var $parent = $source.closest('table');
				var off1 = $parent.offset();
				var w1 = $parent.width();

				var off2 = $source.offset();
				var w2 = $source.width();

				if (parseInt(off2.left) < parseInt(off1.left)
						+ parseInt(w1 / 2))
					return 'right';
				return 'left';
			}
		}
		//初始化七牛图片上传组件
		var uploader = Qiniu
				.uploader({
					runtimes : 'html5,flash,html4', //上传模式,依次退化
					browse_button : 'pickfiles', //上传选择的点选按钮，**必需**
					uptoken_url : 'pic/token', //Ajax请求upToken的Url，**强烈建议设置**（服务端提供）
					// uptoken : '<Your upload token>', //若未指定uptoken_url,则必须指定 uptoken ,uptoken由其他程序生成
					unique_names : true, // 默认 false，key为文件名。若开启该选项，SDK为自动生成上传成功后的key（文件名）。
					// save_key: true,   // 默认 false。若在服务端生成uptoken的上传策略中指定了 `sava_key`，则开启，SDK会忽略对key的处理
					domain : 'http://qiniu-plupload.qiniudn.com/', //bucket 域名，下载资源时用到，**必需**
					container : 'container', //上传区域DOM ID，默认是browser_button的父元素，
					max_file_size : '100mb', //最大文件体积限制
					flash_swf_url : 'js/plupload/Moxie.swf', //引入flash,相对路径
					max_retries : 3, //上传失败最大重试次数
					dragdrop : true, //开启可拖曳上传
					drop_element : 'container', //拖曳上传区域元素的ID，拖曳文件或文件夹后可触发上传
					chunk_size : '4mb', //分块上传时，每片的体积
					auto_start : true, //选择文件后自动上传，若关闭需要自己绑定事件触发上传
					init : {
						'FilesAdded' : function(up, files) {
							plupload.each(files, function(file) {
								// 文件添加进队列后,处理相关的事情
							});
							for (var i = 0, len = files.length; i < len; i++) {
								var file_name = files[i].name; //文件名
								//构造html来更新UI
								var html = '<li  id="file-' + files[i].id + '" style="width:100px;height:100px;position: relative;margin: 2px 0px;border:0"><a id="delupPic'+i+'" class="delete" href="#" style="color: #C0392B;float: right;z-index: 999;">&times;</a><p id="fileuploadok-' 
								+ files[i].id
								+ '" class="file-name" style="position: absolute;top: 0;color: white;left: 0;width:100px;background: black; opacity:.70;overflow:hidden;text-overflow:ellipsis;"><nobr>'
										+ file_name
										+ '</nobr></p><img src="" width="100%" height="100%"></img>'
										+ '<div class="progress progress-striped active" data-percent="0%" style="position: absolute;bottom: 0;left: 0;width:100px;margin-bottom: 0;"><div class="progress-bar progress-bar-success" style="width:0%;"></div></div></li>';
								$(html).appendTo('#imageListtemp');
							}
						},
						'BeforeUpload' : function(up, file) {
							// 每个文件上传前,处理相关的事情
						},
						'UploadProgress' : function(up, file) {
							// 每个文件上传时,处理相关的事情
							var percent = Math
									.round(100 * (file.loaded / file.size));
							$("#file-" + file.id).find(".progress").attr(
									"data-percent", percent + "%");
							$("#file-" + file.id).find(".progress-bar").css(
									"width", percent + "%");
						},
						'FileUploaded' : function(up, file, info) {
							// 每个文件上传成功后,处理相关的事情
							// 其中 info 是文件上传成功后，服务端返回的json，形式如
							// {
							//    "hash": "Fh8xVqod2MQ1mocfI4S4KpRL6D98",
							//    "key": "gogopher.jpg"
							//  }
							// 参考http://developer.qiniu.com/docs/v6/api/overview/up/response/simple-response.html
							var domain = up.getOption('domain');
							var res = JSON.parse(info);
							var sourceLink = "http://7xk6ga.com1.z0.glb.clouddn.com/"
									+ res.key;
							//获取上传成功后的文件的Url
							picpathes.push(sourceLink);
							var ss = picpathes.join();
							//将路径数组拼接传递给form
							$("#inputPics").val(ss);
							/* var id = res.key.substring(0, res.key
									.lastIndexOf('.')); */
							//加载上传到服务器的图片
							$("#file-" + file.id).find("img").attr("src",
									sourceLink);
							$("#file-" + file.id).find(".progress")
									.removeClass("progress-striped active");
							$("#file-" + file.id).click(function() {
								showImage(sourceLink);
							});
							$("#file-" + file.id).find(".delete").click(
									{
										msg : "#file-" + file.id
									},
									function(e) {
										$("" + e.data.msg).remove();
										picpathes.splice($.inArray(sourceLink,
												picpathes), 1);
										var ss = picpathes.join();
										//将路径数组拼接传递给form
										$("#inputPics").val(ss);
									});
						},
						'Error' : function(up, err, errTip) {
							//上传出错时,处理相关的事情
							alert("网络错误");
						},
						'UploadComplete' : function() {
							//队列文件处理完毕后,处理相关的事情
						},
						'Key' : function(up, file) {
							// 若想在前端对每个文件的key进行个性化处理，可以配置该函数
							// 该配置必须要在 unique_names: false , save_key: false 时才生效

							var key = "";
							// do something with key here
							return key
						}
					}
				});
		function setgridly() {
			$('.gridly').gridly({
				base : 10, // px 
				gutter : 10, // px
				columns : 20
			});
		}
		function initgridly(path, id) {
			$(document).on("click", "#" + id, {
				msg : path
			}, function(event) {
				var $this;
				event.preventDefault();
				event.stopPropagation();
				event.data.msg;
				$this = $(this);
				$.ajax({
					url : "pic/del",
					data : {
						"path" : event.data.msg
					},
					type : 'post',
					dataType : 'text',
					success : function(msg) {
						if (msg == "success") {
							$this.parent(".brick").remove();
							$('.gridly').gridly('layout');
						} else {
							alert(msg);
						}
					},
					error : function(msg) {
						alert("链接错误");
					}
				});
			});
		}
	</script>
</body>
</html>