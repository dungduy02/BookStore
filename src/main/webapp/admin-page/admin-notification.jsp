<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="vi-VN">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
	<title>Phản hồi</title>
	<link href="assets/img/icon/icon-logo.png" rel="shortcut icon">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">

	<!-- Fontawesome CSS -->
	<link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
	<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css"> 
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">

	<!-- Animate CSS -->
	<link rel="stylesheet" href="assets/css/animate.min.css"> 

	<!-- Main CSS -->
	<link rel="stylesheet" href="assets/css/admin.css">

</head>

<body>
	<div class="main-wrapper">
		<%@include file="header.jsp"%>
		<%@include file="sidebar.jsp"%>
			
			<!-- Page Wrapper -->
			<div class="page-wrapper">
				<div class="content container-fluid">
				
					<!-- Page Header -->
					<div class="page-header">
						<div class="row">
							<div class="col">
								<h3 class="page-title">Tất cả phản hồi</h3>
							</div>
						</div>
					</div>
					<!-- /Page Header -->

					<div class="admin-noti-wrapper">
						<div class="noti-list">
							<div class="noti-avatar">
								<img src="assets/img/customer/ong.jpg" alt="">
							</div>
							<div class="noti-contents">
								<a href="notification-detail.jsp"><h3>Nguyễn Văn An đã gửi phản hồi</h3></a>
								<span>15 Tháng Mười 2021 10:20</span>
							</div>
						</div>
					</div>
					<div class="admin-noti-wrapper">
						<div class="noti-list">
							<div class="noti-avatar">
								<img src="assets/img/customer/user21.jpg" alt="">
							</div>
							<div class="noti-contents">
								<a href=""><h3>Trần Thị Hà đã gửi phản hồi</h3></a>
								<span>13 Tháng Mười Hai 2021 15:56</span>
							</div>
						</div>
					</div>
					<div class="admin-noti-wrapper">
						<div class="noti-list">
							<div class="noti-avatar">
								<img src="assets/img/customer/user22.jpg" alt="">
							</div>
							<div class="noti-contents">
								<a href=""><h3>Biên Thị Anh đã gửi phản hồi</h3></a>
								<span>12 Tháng Ba 2021 06:05</span>
							</div>
						</div>
					</div>
					<div class="admin-noti-wrapper">
						<div class="noti-list">
							<div class="noti-avatar">
								<img src="assets/img/customer/user23.jpg" alt="">
							</div>
							<div class="noti-contents">
								<a href=""><h3>Ngô Thế Thanh đã gửi phản hồi</h3></a>
								<span>11 Tháng Bốn 2021 12:04 </span>
							</div>
						</div>
					</div>
					<div class="admin-noti-wrapper">
						<div class="noti-list">
							<div class="noti-avatar">
								<img src="assets/img/customer/user24.jpg" alt="">
							</div>
							<div class="noti-contents">
								<a href=""><h3>Dương Thị Vàng đã gửi phản hồi</h3></a>
								<span>10 Tháng Ba 2021 08:42</span>
							</div>
						</div>
					</div>
					<div class="admin-noti-wrapper">
						<div class="noti-list">
							<div class="noti-avatar">
								<img src="assets/img/customer/user25.jpg" alt="">
							</div>
							<div class="noti-contents">
								<a href=""><h3>Lưu Hồng đã gửi phản hồi</h3></a>
								<span>9 Tháng Năm 2021 11:01 </span>
							</div>
						</div>
					</div>
					<div class="admin-noti-wrapper">
						<div class="noti-list">
							<div class="noti-avatar">
								<img src="assets/img/customer/user1.jpg" alt="">
							</div>
							<div class="noti-contents">
								<a href=""><h3>Dương Văn Va đã gửi phản hồi</h3></a>
								<span>9 Tháng Tám 2021 10:20</span>
							</div>
						</div>
					</div>
					<div class="admin-noti-wrapper">
						<div class="noti-list">
							<div class="noti-avatar">
								<img src="assets/img/customer/user26.jpg" alt="">
							</div>
							<div class="noti-contents">
								<a href=""><h3>Trương Thị Bạc đã gửi phản hồi</h3></a>
								<span>8 Tháng Bảy 2021 06:23 </span>
							</div>
						</div>
					</div>
			
				</div>
			</div>			
		
		<!-- /Page Wrapper -->
		
	</div>
	
	<!-- jQuery -->
	<script src="assets/js/jquery-3.5.0.min.js"></script>

	<!-- Bootstrap Core JS -->
	<script src="assets/js/popper.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>

	<!-- Datatables JS -->
	<script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
	<script src="assets/plugins/datatables/datatables.min.js"></script>

	<!-- Select2 JS -->
	<script src="assets/js/select2.min.js"></script>

	<!-- Custom JS -->
	<script src="assets/js/admin.js"></script> 

</body>

</html>