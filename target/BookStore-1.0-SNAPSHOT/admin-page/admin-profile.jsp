<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="vi-VN">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
	<title>Thông tin admin</title>
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
								<h3 class="page-title">Thông tin</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
									<li class="breadcrumb-item active">Thông tin</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
					
					<div class="row">
						<div class="col-md-12">
							<div class="profile-header">
								<div class="row align-items-center">
									<div class="col-auto profile-image">
										<a href="#">
											<img class="rounded-circle" alt="User Image" src="assets/img/admin/admin3.png">
										</a>
									</div>
									<div class="col ml-md-n2 profile-user-info">
										<h4 class="user-name mb-0">Vân Anh</h4>
										<!-- <h6></h6> -->
										<div class="user-Location"><i class="fa fa-map-marker"></i> ĐH Nông Lâm, Thủ Đức</div>
										
									</div>
									<div class="col-auto profile-btn">
										<a href="edit-admin-profile.jsp" class="btn btn-primary">
											Sửa
										</a>
									</div>
								</div>
							</div>
							<div class="profile-menu">
								<ul class="nav nav-tabs nav-tabs-solid">
									<li class="nav-item">
										<a class="nav-link active" data-toggle="tab" href="#per_details_tab">Hồ sơ</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" data-toggle="tab" href="#password_tab">Mật khẩu</a>
									</li>
								</ul>
							</div>	
							<div class="tab-content profile-tab-cont">
								
								<!-- Personal Details Tab -->
								<div class="tab-pane fade show active" id="per_details_tab">
								
									<!-- Personal Details -->
									<div class="row">
										<div class="col-lg-9">
											<div class="card">
												<div class="card-body">
													<h5 class="card-title d-flex justify-content-between">
														<span>Chi tiết</span> 
														<a class="edit-link" data-toggle="modal" href="#edit_personal_details"><i class="fa fa-edit mr-1"></i>Sửa</a>
													</h5>
													<div class="row">
														<p class="col-sm-3 text-muted text-sm-right mb-0 mb-sm-3">Tên</p>
														<p class="col-sm-9">Vân Anh</p>
													</div>
													<div class="row">
														<p class="col-sm-3 text-muted text-sm-right mb-0 mb-sm-3">Ngày sinh</p>
														<p class="col-sm-9">21 - 12 - 2000</p>
													</div>
													<div class="row">
														<p class="col-sm-3 text-muted text-sm-right mb-0 mb-sm-3">Địa chỉ Email</p>
														<p class="col-sm-9">vananh@gmail.com</p>
													</div>
													<div class="row">
														<p class="col-sm-3 text-muted text-sm-right mb-0 mb-sm-3">Điện thoại</p>
														<p class="col-sm-9">028-306-4924</p>
													</div>
													<div class="row">
														<p class="col-sm-3 text-muted text-sm-right mb-0">Địa chỉ</p>
														<p class="col-sm-9 mb-0">KTX khu B, ĐHQG,<br>
														Linh Trung,<br>
														Thủ Đức,<br>
														Hồ Chí Minh.</p>
													</div>
												</div>
											</div>
											
											<!-- Edit Details Modal -->
											<div class="modal fade" id="edit_personal_details" aria-hidden="true" role="dialog">
												<div class="modal-dialog modal-dialog-centered" role="document" >
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title">Chi tiết</h5>
															<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																<span aria-hidden="true">&times;</span>
															</button>
														</div>
														<div class="modal-body">
															<form>
																<div class="row form-row">
																	<div class="col-12 col-sm-6">
																		<div class="form-group">
																			<label>Họ</label>
																			<input type="text" class="form-control" value="Vân">
																		</div>
																	</div>
																	<div class="col-12 col-sm-6">
																		<div class="form-group">
																			<label>Tên</label>
																			<input type="text"  class="form-control" value="Anh">
																		</div>
																	</div>
																	<div class="col-12">
																		<div class="form-group">
																			<label>Ngày sinh</label>
																			<div class="cal-icon">
																				<input type="text" class="form-control" value="21-12-2000">
																			</div>
																		</div>
																	</div>
																	<div class="col-12 col-sm-6">
																		<div class="form-group">
																			<label>Địa chỉ Email</label>
																			<input type="email" class="form-control" value="vananh@gmail.com">
																		</div>
																	</div>
																	<div class="col-12 col-sm-6">
																		<div class="form-group">
																			<label>Điện thoại</label>
																			<input type="text" value="+84 28-306-4924" class="form-control">
																		</div>
																	</div>
																	<div class="col-12">
																		<h5 class="form-title"><span>Địa chỉ</span></h5>
																	</div>
																	<div class="col-12">
																		<div class="form-group">
																		<label>Số nhà</label>
																			<input type="text" class="form-control" value="KTX khu B ĐHQG">
																		</div>
																	</div>
																	<div class="col-12 col-sm-6">
																		<div class="form-group">
																			<label>Phường/ Xã</label>
																			<input type="text" class="form-control" value="Linh Trung">
																		</div>
																	</div>
																	<div class="col-12 col-sm-6">
																		<div class="form-group">
																			<label>Quận/ Huyện</label>
																			<input type="text" class="form-control" value="Thủ Đức">
																		</div>
																	</div>
																	<div class="col-12 col-sm-6">
																		<div class="form-group">
																			<label>Mã code</label>
																			<input type="text" class="form-control" value="1234">
																		</div>
																	</div>
																	<div class="col-12 col-sm-6">
																		<div class="form-group">
																			<label>Tỉnh/ Thành phố</label>
																			<input type="text" class="form-control" value="Hồ Chí Minh">
																		</div>
																	</div>
																</div>
																<button type="submit" class="btn btn-primary btn-block">Lưu</button>
															</form>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- /Edit Details Modal -->
										<div class="col-lg-3">
											
											<!-- Account Status -->
											<div class="card">
												<div class="card-body">
													<h5 class="card-title d-flex justify-content-between">
														<span>Trạng thái</span>
													</h5>
													<button class="btn btn-success" type="button"><i class="fe fe-check-verified"></i> Hoạt động </button>
												</div>
											</div>
											<!-- /Account Status -->
											<!-- Skills -->
											<!-- <div class="card">
												<div class="card-body">
													<h5 class="card-title d-flex justify-content-between">
														<span>Kỹ năng </span> 
														<a class="edit-link" href="#"><i class="fa fa-edit mr-1"></i> Sửa</a>
													</h5>
													<div class="skill-tags">
														<span>Giao tiếp</span>
														<span>Tiếng Anh</span>
														<span>Tận Tâm</span>
														<span>Tin học</span>
								
													</div>
												</div>
											</div> -->
										</div>
										<!-- Skills end -->
									</div>
								</div>

								<!-- /Personal Details Tab -->
								
								<!-- Change Password Tab -->
								<div id="password_tab" class="tab-pane fade">
								
									<div class="card">
										<div class="card-body">
											<h5 class="card-title">Đổi mật khẩu</h5>
											<div class="row">
												<div class="col-md-10 col-lg-6">
													<form>
														<div class="form-group">
															<label>Mật khẩu cũ</label>
															<input type="password" class="form-control">
														</div>
														<div class="form-group">
															<label>Mật khẩu mới</label>
															<input type="password" class="form-control">
														</div>
														<div class="form-group">
															<label>Xác nhận mật khẩu</label>
															<input type="password" class="form-control">
														</div>
														<button class="btn btn-primary" type="submit">Lưu</button>
													</form>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- /Change Password Tab -->
							
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