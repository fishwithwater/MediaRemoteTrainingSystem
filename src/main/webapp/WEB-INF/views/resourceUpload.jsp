<%@page import="cn.edu.xzit.mrts.header.Header"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>
	<%
		Header header = (Header) session.getAttribute("header");
		out.print(header.getLabel());
	%>
</title>
<jsp:include page="baseLink.jsp"></jsp:include>
</head>
<body class="gray-bg top-navigation">

	<div id="wrapper" style="background-color: #f5f5f5;">
		<div id="page-wrapper" class="gray-bg">
			<jsp:include page="prefix.jsp"></jsp:include>
			<div class="row content">
				<h1 class="page-title">资源上传</h1>
				<div class="ibox float-e-margins">

					<form class="form-horizontal">

						<div class="form-group">
							<div class="col-sm-2"></div>
							<label class="col-sm-2 control-label">资源名称</label>
							<div class="col-sm-6">
								<input type="text" class="form-control">
							</div>
							<div class="col-sm-2"></div>
						</div>
						<div class="hr-line-dashed"></div>
						<div class="form-group">
							<div class="col-sm-2"></div>
							<label class="col-sm-2 control-label">资源类型</label>
							<div class="col-sm-6">
								<select class="form-control">
									<option>视频</option>
									<option>Word</option>
									<option>PPT</option>
									<option>PDF</option>
									<option>音频</option>
									<option>压缩包</option>
								</select>
							</div>
							<div class="col-sm-2"></div>
						</div>
						<div class="hr-line-dashed"></div>
						<div class="form-group">
							<div class="col-sm-2"></div>
							<label class="col-sm-2 control-label">所属课程</label>
							<div class="col-sm-6">
								<select class="form-control">
									<option>C语言</option>
									<option>Java</option>
									<option>开源框架</option>
									<option>数据库</option>
								</select>
							</div>
							<div class="col-sm-2"></div>
						</div>
						<div class="hr-line-dashed"></div>
						<div class="form-group">
							<div class="col-sm-2"></div>
							<label class="col-sm-2 control-label">观看权限</label>
							<div class="col-sm-6">
								<select class="form-control">
									<option>所有人</option>
									<option>仅注册用户</option>
									<option>组1</option>
									<option>组2</option>
								</select>
							</div>
							<div class="col-sm-2"></div>
						</div>
						<div class="hr-line-dashed"></div>
						<div class="form-group">
							<div class="col-sm-2"></div>
							<label class="col-sm-2 control-label">上传文件</label>
							<div class="col-sm-6">
								<input type="file" class="form-control">
							</div>
							<div class="col-sm-2"></div>
						</div>
						<div class="hr-line-dashed"></div>
						<div class="form-group">
							<div class="col-sm-3"></div>
							<div class="col-sm-6">
								<input class="btn col-sm-12 btn-primary" type="submit" class="form-control">
							</div>
							<div class="col-sm-3"></div>
						</div>
				</div>
			</div>
			</form>
		</div>
	</div>
	<jsp:include page="suffix.jsp"></jsp:include>
	</div>
	</div>
	<jsp:include page="baseScript.jsp"></jsp:include>
	<!-- Prettyfile -->
	<script
		src="${pageContext.request.contextPath}/js/plugins/prettyfile/bootstrap-prettyfile.js"></script>
	<script type="text/javascript">
		//美化文件上传框
		$('input[type="file"]').prettyFile();
	</script>
</body>
</html>

