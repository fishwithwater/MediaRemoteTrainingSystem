<%@page import="cn.edu.xzit.mrts.header.Header"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>
	<%
		Header header = (Header) request.getAttribute("header");
		out.print(header.getLabel());
	%>
</title>
<jsp:include page="baseLink.jsp"></jsp:include>
</head>
<body class="gray-bg top-navigation">

	<div id="wrapper">
		<div id="page-wrapper" class="gray-bg">
			<jsp:include page="prefix.jsp"></jsp:include>
			<div class="middle-box text-center loginscreen  animated fadeInDown">
				<div>
					<div>

						<h1 class="logo-name"
							style="font-size: 30px; letter-spacing: 0px;">多媒体远程培训系统</h1>

					</div>

					<form class="m-t" role="form" action="index.html">
						<div class="form-group">
							<input type="email" class="form-control" placeholder="用户名"
								required="">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" placeholder="密码"
								required="">
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
</body>
</html>