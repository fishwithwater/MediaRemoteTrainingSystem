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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/plugins/plyr/plyr.css">
	
</head>
<body class="gray-bg top-navigation">

	<div id="wrapper" style="background-color: #f5f5f5;">
		<div id="page-wrapper" class="gray-bg">
			<jsp:include page="prefix.jsp"></jsp:include>
			<div class="content">
				<div class="row" style="text-align:center;">
					<h1>1-1课程导学</h1>
					<span>706人浏览</span>
				</div>
				<div class="row player">
					<video
						poster="https://img4.mukewang.com/szimg/5c18d2d8000141c506000338.jpg"
						controls crossorigin> <!-- Video files --> <source
						src="${pageContext.request.contextPath}/mp4/1-1课程导学.mp4"
						type="video/mp4"></video>
				</div>
			</div>
			<jsp:include page="suffix.jsp"></jsp:include>
		</div>
	</div>
	<jsp:include page="baseScript.jsp"></jsp:include>
	<script
		src="${pageContext.request.contextPath}/js/plugins/plyr/plyr.js"></script>
	<script>
	(function(d, p){
	    var a = new XMLHttpRequest(),
	        b = d.body;
	    a.open("GET", p, true);
	    a.send();
	    a.onload = function(){
	        var c = d.createElement("div");
	        c.style.display = "none";
	        c.innerHTML = a.responseText;
	        b.insertBefore(c, b.childNodes[0]);
	    }
	})(document, "${pageContext.request.contextPath}/css/plugins/plyr/sprite.svg");

		plyr.setup();
	</script>
</body>
</html>