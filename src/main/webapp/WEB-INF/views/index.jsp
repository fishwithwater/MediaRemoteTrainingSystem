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
			
			<jsp:include page="suffix.jsp"></jsp:include>
		</div>
	</div>
	<jsp:include page="baseScript.jsp"></jsp:include>
</body>
</html>