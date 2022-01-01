<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="vi-VN">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
	<title>Thiết lập</title>
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
        
		<div class="page-wrapper">
			<div class="content container-fluid">
			
				<!-- Page Header -->
				<div class="page-header">
					<div class="row">
						<div class="col-12">
							<h3 class="page-title">Thiết lập chung</h3>
						</div>
					</div>
				</div>
				<!-- /Page Header -->
				<div class="row">
					<div class="col-xl-12 col-lg-12 col-md-12" >
						<div class="card">
							<div class="card-body p-0">
								<form> 
									<div class="tab-content pt-0">
									
										<!-- General Settings -->
										<div id="general" class="tab-pane active">
											<div class="card mb-0">
												<!-- <div class="card-header">
													<h4 class="card-title">Thiết lập chung</h4>
												</div> -->
												<div class="card-body">
													<div class="form-group">
														<label>Tên website</label>
														<input type="text" class="form-control" placeholder="Thế giới cây cảnh">
													</div>
													<div class="form-group">
														<label>Chi tiết liên hệ</label>
														<input type="text" class="form-control">
													</div>
													<div class="form-group">
														<label>Điện thoại</label>
														<input type="text" class="form-control">
													</div>
													<div class="form-group">
														<label>Email</label>
														<input type="text" class="form-control">
													</div>
													
													
													<div class="form-group">
														<label>Website Logo</label>
														<div class="uploader">
															<input type="file" class="form-control">
														</div>
														<p class="form-text text-muted small mb-0">Đề xuất ảnh có kích thước <b>150px x 150px</b>
														</p>
														<img src="assets/img/logo-icon.png" class="site-logo" alt="">
													</div>
													<!-- <div class="form-group">
														<label>Shortcut icon</label>
														<div class="uploader">
															<input type="file" class="form-control">
														</div>
														<p class="form-text text-muted small mb-0">Đề xuất ảnh có kích thước <b>16px x 16px</b> hoặc <b>32px x 32px</b></p>
														<p class="form-text text-muted small mb-1">Các định dạng ảnh được chấp nhận: png hoặc ico</p>
														<img src="assets/img/logo-icon.png" class="fav-icon" alt="">
													</div> -->
												</div>
											</div>
										</div>
										<!-- /General Settings -->
										
										<!-- Push Notification -->
									
										<!-- /Push Notification -->
										
										
										
										<div class="card-body pt-0">
											<button type="submit" class="btn btn-primary">Lưu thay đổi</button>
										</div>
									</div>
								</form>
							</div>
						</div>
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

	<!-- Slimscroll JS -->
	<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

	<!-- Custom JS -->
	<script src="assets/js/admin.js"></script>

</body>

</html>