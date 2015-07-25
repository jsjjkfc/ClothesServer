<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<title>服装后台管理系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!-- basic styles -->

<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="../css/backstage/font-awesome.min.css" />
<!-- page specific plugin styles -->
<!-- ace styles -->

<link rel="stylesheet" href="../css/backstage/ace.min.css" />
<link rel="stylesheet" href="../css/backstage/ace-rtl.min.css" />
<link rel="stylesheet" href="../css/backstage/ace-skins.min.css" />
<!-- inline styles related to this page -->
<!-- ace settings handler -->
<script src="../js/ace/ace-extra.min.js"></script>
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
							<li><a href="javascript:;"> 查看所有消息 <i
									class="icon-arrow-right"></i>
							</a></li>
						</ul></li>

					<li class="light-blue"><a data-toggle="dropdown" href="#"
						class="dropdown-toggle"> <img class="nav-user-photo"
							src="../image/avatar2.png" alt="Jason's Photo" /> <span
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
							<li><a href="/ClothesServer/supplier/page"> <i
									class="icon-double-angle-right"></i> 供应商管理
							</a></li>
							<li class="active"><a href="#"> <i
									class="icon-double-angle-right"></i> 商品类型管理
							</a></li>
						</ul></li>


				</ul>
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
						<li class="active">商品类型管理</li>
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
									<h3 class="header smaller lighter blue">商品类型管理</h3>
									<div class="table-header">商品类型详情列表</div>

									<div class="table-responsive">
										<table id="sample-table-2"
											class="table table-striped table-bordered table-hover">
											<h4 class="pink" style="float: right; margin-right: 10px">
												<i class="icon-plus blue"></i> <a href="#modal-table"
													role="button" class="green" data-toggle="modal"> 添加商品类型
												</a>
											</h4>
											<thead>
												<tr>
													<th class="center"><label> <input
															type="checkbox" class="ace" /> <span class="lbl"></span>
													</label></th>
													<th>商品类型编号</th>
													<th>商品类型名称</th>
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
												添加商品类型
											</div>
										</div>
										<div class="modal-body">
											<form class="form-horizontal" id="prductForm"
												enctype="multipart/form-data">
												<div class="form-group">
													<label for="supplierDesc"
														class="col-sm-3 control-label no-padding-right">
														商品类型描述 </label>
													<div class="col-sm-9">
														<input type="text" name="name" id="supplierDesc"
															placeholder="" class="col-xs-10 col-sm-9" /> <input
															type="hidden" name="id" id="supplierid" />
													</div>
												</div>
												<div class="form-group">
													<div class="col-xs-12">
														<div class="col-sm-6 center">
															<button class="btn btn-sm btn-success" id="form-submit">
																<i class="icon-plus blue"></i>添加
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

	<script src="../js/jquery/jquery-1.11.3.min.js"></script>

	<!-- <![endif]-->
	<script type="text/javascript">
		if ("ontouchend" in document)
			document
					.write("<script src='js/jquery/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>
	<script src="../bootstrap/js/bootstrap.min.js"></script>
	<script src="../bootstrap/js/bootbox.min.js"></script>
	<script src="../js/ace/typeahead-bs2.min.js"></script>
	<!-- page specific plugin scripts -->
	<script src="../js/jquery/jquery.dataTables.min.js"></script>
	<script src="../js/jquery/jquery.dataTables.bootstrap.js"></script>
	<!--  <script src="/js/jquery/chosen.jquery.min.js"></script> -->
	<script src="../js/jquery/jquery.form.js"></script>
	<!-- ace scripts -->
	<script src="../js/ace/ace-elements.min.js"></script>
	<script src="../js/ace/ace.min.js"></script>
	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		//用于存储供应商数据的全局变量
		var supplierDatas;
		//点击添加商品按钮绑定事件
		$("h4>a")
				.click(
						function() {
							$('#form-submit').html(
									'<i class="icon-plus white"></i>添加');
							$("#supplierDesc").val("");
							$("#supplierDesc").attr("value", "");
							$("#modal-table")
									.find(".table-header")
									.html(
											"<button type='button' class='close' data-dismiss='modal' aria-hidden='true'><span class='white'>&times;</span></button>"
													+ "添加商品类型");
							initform("/type/addType");
						});
		function edit(row) {
			var rowData = supplierDatas.aaData[row];
			$('#form-submit').html('<i class="icon-pencil white"></i>更新');
			$("#supplierDesc").val(rowData.name);
			$("#supplierDesc").attr("value", rowData.name);
			$("#supplierid").attr("value", rowData.typeId);
			$("#modal-table")
					.find(".table-header")
					.html(
							"<button type='button' class='close' data-dismiss='modal' aria-hidden='true'><span class='white'>&times;</span></button>"
									+ "修改供应商信息");
			initform("/type/upType");
		}
		function initform(url) {
			var options = {
				//定义返回JSON数据，还包括xml和script格式
				dataType : 'text',
				type : 'post',
				url : url,
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
				// ajaxForm
				$("#prductForm").ajaxSubmit(options);
			});
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
							url : "/type/deleteType",//这个就是请求地址对应sAjaxSource
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
				},
			//title: "bootbox confirm也可以添加标题哦",  
			});
		}
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
							"sAjaxSource" : "/ClothesServer/type/queryPaged",//这个是请求的地址
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
										"sClass" : "center",
									},
									{
										"mDataProp" : "typeId",
										"sClass" : "center"
									},
									{
										"mDataProp" : "name",
										"bSortable" : false,
										"sClass" : "center"
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
													+ data.aData.typeId
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
									} ],
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
					supplierDatas = result;
					fnCallback111(result);//把返回的数据传给这个方法就可以了,datatable会自动绑定数据的
					initTable();
				},
				error : function(msg) {
					alert(msg.statusText);
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
		//重置清空表单
		function resetForm() {
			$("#modal-table").modal('hide');
			$("#modal-table").find("input").val("");
			$("#modal-table").find("input").attr("value", "");
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
	</script>
</body>
</html>