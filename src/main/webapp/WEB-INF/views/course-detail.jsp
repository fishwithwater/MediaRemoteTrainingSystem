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
			<div class="content">
				<div class="ibox-content m-b-sm border-bottom"
					style="background-image: url(https://img.mukewang.com/szimg/5c18d2e80001688720000560.jpg); background-repeat: no-repeat; background-size: 100%;">
					<div class="p-xs" style="text-align: center; color: #ffffff;">
						<h1>剑指Java面试-Offer直通车</h1>
						<span>快速建立Java知识体系 深度解答面试高频题目</span><br> <br> <br>
						<span>难度 中级 · 学习人数1032</span><br> <br> <br>

					</div>
				</div>
				<div id="vertical-timeline"
					class="vertical-container light-timeline">
					<div class="vertical-timeline-block">
						<div class="vertical-timeline-icon navy-bg">
							<i class="fa fa-video-camera"></i>
						</div>

						<div class="vertical-timeline-content">
							<h2>视频</h2>
							<p>1-1 课程导学</p>
							<a href="#" class="btn btn-sm btn-primary"> 观看视频</a> <span
								class="vertical-date"><small>3月25日</small> 上传 </span>
						</div>
					</div>

					<div class="vertical-timeline-block">
						<div class="vertical-timeline-icon blue-bg">
							<i class="fa fa-video-camera"></i>
						</div>

						<div class="vertical-timeline-content">
							<h2>视频</h2>
							<p>2-1 网络基础知识讲解</p>
							<a href="#" class="btn btn-sm btn-primary"> 观看视频</a> <span
								class="vertical-date"><small>3月25日</small> 上传 </span>
						</div>
					</div>

					<div class="vertical-timeline-block">
						<div class="vertical-timeline-icon lazur-bg">
							<i class="fa fa-file-word-o"></i>
						</div>

						<div class="vertical-timeline-content">
							<h2>WORD</h2>
							<p>2-2 TCP的三次握手</p>
							<a href="#" class="btn btn-sm btn-primary"> 下载文档</a> <span
								class="vertical-date"><small>3月25日</small> 上传 </span>
						</div>
					</div>

					<div class="vertical-timeline-block">
						<div class="vertical-timeline-icon yellow-bg">
							<i class="fa fa-file-powerpoint-o"></i>
						</div>

						<div class="vertical-timeline-content">
							<h2>PPT</h2>
							<p>2-4 TCP的四次挥手</p>
							<a href="#" class="btn btn-sm btn-primary"> 下载文档</a> <span
								class="vertical-date"><small>3月25日</small> 上传 </span>
						</div>
					</div>

					<div class="vertical-timeline-block">
						<div class="vertical-timeline-icon lazur-bg">
							<i class="fa fa-file-archive-o"></i>
						</div>

						<div class="vertical-timeline-content">
							<h2>压缩包</h2>
							<p>2-5 TCP和UDP的区别</p>
							<a href="#" class="btn btn-sm btn-primary"> 下载文档</a> <span
								class="vertical-date"><small>3月25日</small> 上传 </span>
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