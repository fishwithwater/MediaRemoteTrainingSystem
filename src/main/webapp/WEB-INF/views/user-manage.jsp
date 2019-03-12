<%@page import="cn.edu.xzit.mrts.header.Header"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>
	<%
		Header header = (Header) session.getAttribute("header");
		out.print(header.getLabel());
	%>
</title>
<jsp:include page="baseLink.jsp"></jsp:include>

<link
	href="${pageContext.request.contextPath}/css/plugins/bootstrap-table/bootstrap-table.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/customer.css"
	rel="stylesheet">
</head>
<body class="gray-bg top-navigation">

	<div id="wrapper" style="background-color: #f5f5f5;">
		<div id="page-wrapper" class="gray-bg">
			<jsp:include page="prefix.jsp"></jsp:include>
			<div class="row content">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>账号管理</h5>
					</div>
					<div class="ibox-content">
						<div class="btn-group hidden-xs" id="exampleTableEventsToolbar"
							role="group">
							<button type="button" class="btn btn-outline btn-default"
								onclick="add()">
								<i class="glyphicon glyphicon-plus" aria-hidden="true"></i>
							</button>

						</div>
						<table id="exampleTablePagination" data-toggle="table"
							data-toolbar="#exampleTableEventsToolbar"
							data-query-params="queryParams" data-mobile-responsive="true"
							data-height="800" data-pagination="true" data-icon-size="outline"
							data-search="true">

						</table>
					</div>
				</div>
			</div>
			<jsp:include page="suffix.jsp"></jsp:include>
		</div>
		<%--模态框区--%>
		<div class="modal inmodal" id="myAddModal" tabindex="-1" role="dialog"
			aria-hidden="false">
			<div class="modal-dialog modal-lg">
				<div class="modal-content animated fadeInUp">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title">新增用户</h4>
					</div>
					<div class="modal-body" style="height: 300px;">
						<div class="ibox-content col-lg-12">
							<form class="form-horizontal m-t col-lg-12" id="addForm">
								<table class="col-lg-12">
									<tr>
										<td>
											<div class="form-group">
												<label class="col-sm-3 control-label">用户名</label>
												<div class="col-sm-8">
													<input id="addUsername" type="text" class="form-control">
												</div>
											</div>
										</td>
										<td>
											<div class="form-group">
												<label class="col-sm-3 control-label">密码</label>
												<div class="col-sm-8">
													<input id="addPassword" type="password"
														class="form-control">
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="form-group">
												<label class="col-sm-3 control-label">角色</label>
												<div class="col-sm-8">
													<select id="addRole" class="form-control">
													</select>
												</div>
											</div>
										</td>
									</tr>
								</table>
							</form>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
						<button type="button" class="btn btn-primary"
							onclick="addSubmit()">保存</button>
					</div>
				</div>
			</div>
		</div>
		<div class="modal inmodal" id="myEditModal" tabindex="-1"
			role="dialog" aria-hidden="false">
			<div class="modal-dialog modal-lg">
				<div class="modal-content animated fadeInUp">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title">修改管理员权限</h4>
						<%--<small class="font-bold">推荐图片宽高比100:83</small>--%>
					</div>
					<div class="modal-body" style="height: 300px;">
						<div class="ibox-content col-lg-12">
							<form class="form-horizontal m-t col-lg-12" id="editForm">
								<table class="col-lg-12">
									<tr>
										<td>
											<div class="form-group">
												<label class="col-sm-3 control-label">用户名</label>
												<div class="col-sm-8">
													<input id="editUsername" type="text" class="form-control">
												</div>
											</div>
										</td>
										<td>
											<div class="form-group">
												<label class="col-sm-3 control-label">密码</label>
												<div class="col-sm-8">
													<input id="editPassword" type="password"
														class="form-control" placeholder="不填则不修改密码">
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="form-group">
												<label class="col-sm-3 control-label">角色</label>
												<div class="col-sm-8">
													<select id="editRole" class="form-control">
													</select>
												</div>
											</div>
										</td>
									</tr>
								</table>
							</form>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
						<button type="button" class="btn btn-primary"
							onclick="editSubmit()">保存</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="baseScript.jsp"></jsp:include>
	<script
		src="${pageContext.request.contextPath}/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
	<script type="text/javascript">
		function initSelectBox(head, cb) {
			request({
				url : 'role-manage/role-list-without-pagination',
				success : function(data) {
					var html = ''
					for (var i = 0; i < data.length; i++) {
						var role = data[i]
						html += '<option id="' + head + 'Role' + role.id + '" value="' + role.id + '">'
								+ role.name + '</option>'
					}
					$('#' + head + 'Role').html(html)
					cb()
				}
			})
		}

		var columns = [
				{
					field : 'id', // 返回json数据中的name
					title : '编号', // 表格表头显示文字
					align : 'center', // 左右居中
					valign : 'middle' // 上下居中
				},
				{
					field : 'username',
					title : '用户名',
					align : 'center',
					valign : 'middle'
				},
				{
					field : 'rid',
					title : '角色',
					align : 'center',
					valign : 'middle'
				},
				{
					field : 'gid',
					title : '小组',
					align : 'center',
					valign : 'middle'
				},
				{
					title : "操作",
					align : 'center',
					valign : 'middle',
					width : 160, // 定义列的宽度，单位为像素px
					formatter : function(value, row, index) {
						return '<button class="btn btn-primary btn-sm" onclick="edit(\''
								+ row.id
								+ '\')""><i class="glyphicon glyphicon-pencil" aria-hidden="true"></i></button>'
								+ '<button class="btn btn-danger btn-sm" onclick="del(\''
								+ row.id
								+ '\')" style="margin-left: 10px;"><i class="glyphicon glyphicon-trash" aria-hidden="true"></i></button>';
					}
				} ]
		initTable("exampleTablePagination",
				"${pageContext.request.contextPath}/user-manage/user-list",
				columns, function(res) {
					return res.data
				})
		function add() {
			initSelectBox('add', function() {
				showModal('myAddModal')
			})
		}
	</script>
</body>
</html>