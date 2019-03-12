<%@page import="cn.edu.xzit.mrts.header.Header"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
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

	<div id="wrapper" style="background-color:#f5f5f5;">
		<div id="page-wrapper" class="gray-bg">
			<jsp:include page="prefix.jsp"></jsp:include>
			<div class="middle-box text-center loginscreen  animated fadeInDown" style="margin-top:100px;">
				<div>
					<div>

						<h1 class="logo-name"
							style="font-size: 30px; letter-spacing: 0px;color:#a6a6a6;">多媒体远程培训系统</h1>

					</div>

					<form class="m-t" role="form"
						action="${pageContext.request.contextPath}/login" method="POST">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="用户名"
								name="username" required="true">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" placeholder="密码"
								name="password" required="true">
						</div>
						<button type="submit" class="btn btn-primary block full-width m-b">登
							录</button>


						<p class="text-muted text-center">
							<a href="login.html#"><small>忘记密码了？</small></a> | <a
								href="register.html">注册一个新账号</a>
						</p>

					</form>
				</div>
			</div>
			<jsp:include page="suffix.jsp"></jsp:include>
		</div>
	</div>
	<jsp:include page="baseScript.jsp"></jsp:include>
	<script type="text/javascript">
		$(document).ready(function() {
			$("form").submit(function(e) {
				e.preventDefault();
				request({
					url:'login',
					data:formData('form'),
					method:'POST',
					success:function(data){
						toastr.success('登录成功')
						setTimeout(function(){
							window.location.href = BASE_URL;
						},1000)
					},
					error:function(err){
						toastr.error(err)
					}
				})
			});
		});
	</script>
</body>
</html>