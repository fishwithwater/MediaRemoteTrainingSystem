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

	<div id="wrapper" style="background-color: #f5f5f5;">
		<div id="page-wrapper" class="gray-bg">
			<jsp:include page="prefix.jsp"></jsp:include>
			<div class="content">
				<div class="row">
					<div class="ibox float-e-margins">
						<div class="carousel slide col-sm-12" id="carousel1">
							<div class="carousel-inner">
								<div class="item active">
									<img alt="image" class="img-responsive"
										src="https://img.mukewang.com/5c90e6fe00018c4916000540.jpg"
										style="width: 100%">
								</div>
								<div class="item">
									<img alt="image" class="img-responsive"
										src="https://img.mukewang.com/5c9839770001615909360316.jpg"
										style="width: 100%">
								</div>
								<div class="item ">
									<img alt="image" class="img-responsive"
										src="https://img.mukewang.com/5c91a0e60001b4e616000540.jpg"
										style="width: 100%">
								</div>
								<div class="item ">
									<img alt="image" class="img-responsive"
										src="https://img.mukewang.com/5c8f32130001496809360316.jpg"
										style="width: 100%">
								</div>
								<div class="item ">
									<img alt="image" class="img-responsive"
										src="https://img.mukewang.com/5c0d1c9f000124de18720632.jpg"
										style="width: 100%">
								</div>
								<div class="item ">
									<img alt="image" class="img-responsive"
										src="https://img.mukewang.com/5bfe88c20001038518720632.jpg"
										style="width: 100%">
								</div>
							</div>
							<a data-slide="prev" href="carousel.html#carousel1"
								class="left carousel-control"> <span class="icon-prev"></span>
							</a> <a data-slide="next" href="carousel.html#carousel1"
								class="right carousel-control"> <span class="icon-next"></span>
							</a>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="ibox float-e-margins">
						<div class="col-sm-4">
							<div class="widget-head-color-box navy-bg text-center" >
								<img src="https://img1.sycdn.imooc.com/szimg/5c18d2d8000141c506000338.jpg" style="width:100%"
									alt="profile">
							</div>
							<div class="widget-text-box">
								<h4 class="media-heading">剑指Java面试-Offer直通车</h4>
								<p>中级 已有1032人学习</p>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="widget-head-color-box navy-bg text-center" >
								<img src="https://img3.sycdn.imooc.com/szimg/5c90dc020849c59a06000338.jpg" style="width:100%"
									alt="profile">
							</div>
							<div class="widget-text-box">
								<h4 class="media-heading">全面掌握MongoDB 4.0，完成从小白到达人的蜕变</h4>
								<p>入门 已有2503人学习</p>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="widget-head-color-box navy-bg text-center" >
								<img src="https://img4.sycdn.imooc.com/szimg/5c6bdb3e08e4674a06000338.jpg" style="width:100%"
									alt="profile">
							</div>
							<div class="widget-text-box">
								<h4 class="media-heading">从基础到实战	手把手带你掌握新版Webpack4.0</h4>
								<p>中级 已有332人学习</p>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="widget-head-color-box navy-bg text-center" >
								<img src="https://img4.sycdn.imooc.com/5c8b7771088cc7b506000338-240-135.jpg" style="width:100%"
									alt="profile">
							</div>
							<div class="widget-text-box">
								<h4 class="media-heading">Spring框架小白的蜕变</h4>
								<p>初级 已有3345人学习</p>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="widget-head-color-box navy-bg text-center" >
								<img src="https://img1.sycdn.imooc.com/5c760767084b92ce06000338-240-135.jpg" style="width:100%"
									alt="profile">
							</div>
							<div class="widget-text-box">
								<h4 class="media-heading">玩转MySQL8.0新特性</h4>
								<p>入门 已有6096人学习</p>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="widget-head-color-box navy-bg text-center" >
								<img src="https://img2.sycdn.imooc.com/szimg/58f57d200001461105400300.jpg" style="width:100%"
									alt="profile">
							</div>
							<div class="widget-text-box">
								<h4 class="media-heading">从0开始 独立完成企业级Java电商网站开发</h4>
								<p>入门 已有6950人学习</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<jsp:include page="suffix.jsp"></jsp:include>
		</div>
	</div>
	<jsp:include page="baseScript.jsp"></jsp:include>
</body>
</html>