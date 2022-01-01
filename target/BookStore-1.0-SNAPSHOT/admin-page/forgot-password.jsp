<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="vi-VN">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
	<title>Quên mật khẩu</title>
	<link href="assets/img/icon/icon-logo.png" rel="shortcut icon">

	<!-- Favicons -->
	<link rel="shortcut icon" href="assets/img/favicon.png">

	<!-- Fontawesome CSS -->
	<link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
	<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">
	
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">

	<!-- Main CSS -->
	<link rel="stylesheet" href="assets/css/admin.css">

</head>

<body>
	<div class="main-wrapper">
		<%@include file="header.jsp"%>
		<%@include file="sidebar.jsp"%>
		<div class="login-page">
			<div class="login-body container">
				<div class="loginbox">
					<div class="login-right-wrap">
						<div class="account-header">
							<div class="account-logo text-center mb-4">
								<a href="dashboard.jsp">
									<img src="assets/img/logo-icon.png" alt="" class="img-fluid">
								</a>
							</div>
						</div>
						<div class="login-header">
							<h3>Quên mật khẩu?</h3>
							<p class="text-muted">Nhập email để lấy mật khẩu</p>
						</div>
						<form action="dashboard.jsp">
							<div class="form-group mb-4">
								<label class="control-label">Email</label>
								<input class="form-control" type="text" placeholder="Nhập địa chỉ email">
							</div>
							<div class="text-center">
								<button class="btn btn-primary btn-block account-btn" type="submit">Reset Password</button>
							</div>
						</form>
						 
								
								<div class="text-center dont-have">Nhớ mật khẩu? <a href="login.jsp">Đăng nhập</a></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- jQuery -->
	<script src="assets/js/jquery-3.5.0.min.js"></script>

	<!-- Bootstrap Core JS -->
	<script src="assets/js/popper.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>

	<!-- Custom JS -->
	<script src="assets/js/admin.js"></script>

</body>

</html>