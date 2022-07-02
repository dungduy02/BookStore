<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 12/8/2021
  Time: 10:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html lang="vi-VN">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
	<title>Thêm admin</title>
	<link href="assets/img/icon/icon-logo.png" rel="shortcut icon">
	<!-- Bootstrap CSS -->

</head>

<body>
<!-- Sidebar -->
<div class="sidebar" id="sidebar">
	<div class="sidebar-logo">
		<a href="dashboard.jsp">
			<img src="assets/img/logo-icon.png" class="img-fluid" alt="">
		</a>
	</div>
	<div class="sidebar-inner">
		<div id="sidebar-menu" class="sidebar-menu">
			<ul>
				<li >
					<a href="dashboard.jsp"><i class="fas fa-columns"></i> <span>Dashboard</span></a>
				</li>
				<li class="submenu">
					<a href="#"><i class="fas fa-tasks"></i> <span>Quản lí</span> <span class="menu-arrow"></span></a>
					<ul>
						<li><a href="categories.jsp">Danh mục</a></li>
						<li><a href="product.jsp" >Sản phẩm</a></li>
						<li><a href="blog.jsp" >Blog</a></li>
						<!-- <li><a href="coupon-code-type.html">Loại mã giảm giá</a></li>
                        <li><a href="coupon-code.html">Mã giảm giá</a></li>
                        <li><a href="ratingstype.html">Loại đánh giá</a></li>
                        <li><a href="email.html">Email</a></li> -->


					</ul>
				</li>

				<li class="submenu">
					<a href="#"><i class="fas fa-shopping-cart"></i><span>Bán hàng</span> <span class="menu-arrow"></span></a>
					<ul>
						<li><a href="total-report.jsp">Danh sách đặt hàng</a></li>
						<!-- <li><a href="shipments.html">Vận chuyển</a></li>
                        <li><a href="return-request.html">Bảo hành</a></li>
                        <li><a href="review-reports.html">Đánh giá sản phẩm</a></li> -->


					</ul>
				</li>

				<li class="submenu">
					<a href="#"><i class="fas fa-users"></i><span>Người dùng</span> <span class="menu-arrow"></span></a>
					<ul>
						<li><a href="users.jsp" class="active" >Khách hàng</a></li>
						<li><a href="admin-list.jsp">Danh sách admin</a></li>
						<li><a href="service-list.jsp" >Nhà cung cấp</a></li>
						<li><a href="publisher.jsp">Nhà xuất bản</a></li>
					</ul>
				</li>
				<li >
					<a href="admin-profile.jsp" ><i class="fas fa-user-plus"></i> <span>Thông tin cá nhân</span></a>
				</li>
				<li>
					<a href="settings.jsp"><i class="fas fa-cog"></i> <span>Thiết lập</span></a>
				</li>
			</ul>
		</div>
	</div>
</div>
<!-- /Sidebar -->

</body>

</html>