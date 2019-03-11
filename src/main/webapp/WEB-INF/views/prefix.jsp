<%@page import="cn.edu.xzit.mrts.header.SubItem"%>
<%@page import="java.util.List"%>
<%@page import="cn.edu.xzit.mrts.header.Item"%>
<%@page import="cn.edu.xzit.mrts.header.Header"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Header header = (Header) request.getAttribute("header");
	List<Item> itemList = header.getItems();
%>
<div class="row border-bottom white-bg" style="margin-bottom: 50px;">
	<nav class="navbar navbar-static-top" role="navigation">
		<div class="navbar-header">
			<button aria-controls="navbar" aria-expanded="false"
				data-target="#navbar" data-toggle="collapse"
				class="navbar-toggle collapsed" type="button">
				<i class="fa fa-reorder"></i>
			</button>
			<a href="${pageContext.request.contextPath}/" class="navbar-brand"><%=header.getTitle()%></a>
		</div>
		<div class="navbar-collapse collapse" id="navbar">
			<ul class="nav navbar-nav">
				<%
					for (Item item : itemList) {
						if (item.getDropdown()) {
				%>
				<li class="dropdown <%=item.getActive() ? "active" : ""%>"><a
					aria-expanded="false" role="button" href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <%=item.getName()%>
						<span class="caret"></span></a>
					<ul role="menu" class="dropdown-menu">
						<%
							for (SubItem subItem : item.getSubItems()) {
						%>
						<li><a
							href="${pageContext.request.contextPath}/<%=subItem.getUrl()%>"><%=subItem.getName()%></a></li>
						<%
							}
						%>
					</ul></li>
				<%
					} else {
				%>
				<li class="<%=item.getActive() ? "active" : ""%>"><a
					aria-expanded="false" role="button"
					href="${pageContext.request.contextPath}/<%=item.getUrl()%>"><%=item.getName()%></a>
				</li>
				<%
					}
				%>


				<%
					}
				%>
				<ul class="nav navbar-top-links navbar-right">
					<%
						if (session.getAttribute("user") != null) {
					%>
					<li><a href="${pageContext.request.contextPath}/logout"> <i
							class="fa fa-sign-out"></i> 退出
					</a></li>
					<%
						} else {
					%>
					<li><a href="${pageContext.request.contextPath}/login"> <i
							class="fa fa-sign-in"></i> 登录
					</a></li>
					<%
						}
					%>
				</ul>
		</div>
	</nav>
</div>