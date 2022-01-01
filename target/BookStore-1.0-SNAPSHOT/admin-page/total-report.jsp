<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="vi-VN">
<head>
	<meta charset="utf-8">
	<title>Danh sách đặt hàng</title>
	<link href="assets/img/icon/icon-logo.png" rel="shortcut icon">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">

	<!-- Fontawesome CSS -->
	<link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
	<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">

	<!-- Datepicker CSS -->
	<link rel="stylesheet" href="assets/css/bootstrap-datetimepicker.min.css">

	<!-- Datatables CSS -->
	<link rel="stylesheet" href="assets/plugins/datatables/datatables.min.css">

	<!-- Animate CSS -->
	<link rel="stylesheet" href="assets/css/animate.min.css">

	<!-- Select CSS -->
	<link rel="stylesheet" href="assets/css/select2.min.css">

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
						<div class="col">
							<h3 class="page-title">Danh sách đặt hàng</h3>
						</div>
						<!-- <div class="col-auto text-right">
							<a class="btn btn-white filter-btn" href="javascript:void(0);" id="filter_search">
								<i class="fas fa-filter"></i>
							</a>
						</div> -->
					</div>
				</div>
				<!-- /Page Header -->
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-hover table-center mb-0 datatable">
										<thead>
											<tr>
												<th>ID</th>
												<th>Khách hàng</th>
												<th>Sản phẩm</th>
												<th>Thành tiền</th>
												<th>Trạng thái</th>
												<th>Chi tiết</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>order-01</td>
												<!-- <td>16/9/2020</td> -->
												<td>
													<span class="table-avatar">
														<a href="#" class="avatar avatar-sm mr-2">
															<img class="avatar-img rounded-circle" alt="" src="assets/img/customer/user1.jpg">
														</a>
														<a href="javascript:void(0);">Mai Văn A</a>
													</span>
												</td>
												<td>
													<span class="table-avatar">
														<a href="#" class="avatar avatar-sm mr-2">
															<img class="avatar-img rounded-circle" alt="" src="assets/img/product/product-1.jpg">
														</a>
														<a href="javascript:void(0);">Dạy Con Làm Giàu </a>
													</span>
												</td>
												<td>125.000 VNĐ</td>
												<td>
													<label class="badge badge-dark">Đang chờ xử lí</label>
												</td>
												<td>
													<a href="view-order.jsp" class="btn btn-sm bg-info-light">
														<i class="far fa-eye mr-1"></i> Chi tiết
													</a>
												</td>
											</tr>
											<tr>
												<td>order-02</td>
												<td>
													<span class="table-avatar">
														<a href="#" class="avatar avatar-sm mr-2">
															<img class="avatar-img rounded-circle" alt="" src="assets/img/customer/user2.jpg">
														</a>
														<a href="javascript:void(0);">Nguyễn Thị B</a>
													</span>
												</td>
												<td>
													<span class="table-avatar">
														<a href="#" class="avatar avatar-sm mr-2">
															<img class="avatar-img rounded-circle" alt="" src="assets/img/product/product-2.jpg">
														</a>
														<a href="javascript:void(0);">Nhà Lãnh Đạo Không Chức</a>
													</span>
												</td>
												<td>125.000 VNĐ</td>
												<td>
													<label class="badge badge-primary">Hoàn thành</label>
												</td>
												<td>
													<a href="service-details.html" class="btn btn-sm bg-info-light">
														<i class="far fa-eye mr-1"></i> Chi tiết
													</a>
												</td>
											</tr>
											<tr>
												<td>order-03</td>
												<td>
													<span class="table-avatar">
														<a href="#" class="avatar avatar-sm mr-2">
															<img class="avatar-img rounded-circle" alt="" src="assets/img/customer/user15.jpg">
														</a>
														<a href="javascript:void(0);">Trần Văn C</a>
													</span>
												</td>
												<td>
													<span class="table-avatar">
														<a href="#" class="avatar avatar-sm mr-2">
															<img class="avatar-img rounded-circle" alt="" src="assets/img/product/product-3.jpg">
														</a>
														<a href="javascript:void(0);">Nhà Đầu Tư Thông Minh</a>
													</span>
												</td>
												<td>145.000 VNĐ</td>
												<td>
													<label class="badge badge-info">Đang xử lí</label>
												</td>
												<td>
													<a href="service-details." class="btn btn-sm bg-info-light">
														<i class="far fa-eye mr-1"></i> Chi tiết
													</a>
												</td>
											</tr>
											<tr>
												<td>order-04</td>
												<td>
													<span class="table-avatar">
														<a href="#" class="avatar avatar-sm mr-2">
															<img class="avatar-img rounded-circle" alt="" src="assets/img/customer/user4.jpg">
														</a>
														<a href="javascript:void(0);">La Thị D</a>
													</span>
												</td>
												<td>
													<span class="table-avatar">
														<a href="#" class="avatar avatar-sm mr-2">
															<img class="avatar-img rounded-circle" alt="" src="assets/img/product/product-4.jpg">
														</a>
														<a href="javascript:void(0);">Nghĩ Giàu & Làm Giàu </a>
													</span>
												</td>
												<td>99.000 VNĐ</td>
												<td>
													<label class="badge badge-warning">Từ chối bởi người dùng</label>
												</td>
												<td>
													<a href="service-details.html" class="btn btn-sm bg-info-light">
														<i class="far fa-eye mr-1"></i> Chi tiết
													</a>
												</td>
											</tr>
											<tr>
												<td>order-05</td>
												<td>
													<span class="table-avatar">
														<a href="#" class="avatar avatar-sm mr-2">
															<img class="avatar-img rounded-circle" alt="" src="assets/img/customer/user6.jpg">
														</a>
														<a href="javascript:void(0);">Hà Thị F</a>
													</span>
												</td>
												<td>
													<span class="table-avatar">
														<a href="#" class="avatar avatar-sm mr-2">
															<img class="avatar-img rounded-circle" alt="" src="assets/img/product/product-5.jpg">
														</a>
														<a href="javascript:void(0);">Từ Tốt Đến Vĩ Đại </a>
													</span>
												</td>
												<td>125.000 VNĐ</td>
												<td>
													<label class="badge badge-dark">Đang chờ xử lí</label>
												</td>
												<td>
													<a href="service-details.html" class="btn btn-sm bg-info-light">
														<i class="far fa-eye mr-1"></i> Chi tiết
													</a>
												</td>
											</tr>
											<tr>
												<td>order-06</td>
												<td>
													<span class="table-avatar">
														<a href="#" class="avatar avatar-sm mr-2">
															<img class="avatar-img rounded-circle" alt="" src="assets/img/customer/user12.png">
														</a>
														<a href="javascript:void(0);">Thái Thị L</a>
													</span>
												</td>
												<td>
													<span class="table-avatar">
														<a href="#" class="avatar avatar-sm mr-2">
															<img class="avatar-img rounded-circle" alt="" src="assets/img/product/product-6.jpg">
														</a>
														<a href="javascript:void(0);">Dạy Con Làm Giàu 02</a>
													</span>
												</td>
												<td>65.000 VNĐ</td>
												<td>
													<label class="badge badge-danger">Bị hủy bởi người dùng</label>
												</td>
												<td>
													<a href="service-details.html" class="btn btn-sm bg-info-light">
														<i class="far fa-eye mr-1"></i> Chi tiết
													</a>
												</td>
											</tr>
											<tr>
												<td>order-07</td>
												<td>
													<span class="table-avatar">
														<a href="#" class="avatar avatar-sm mr-2">
															<img class="avatar-img rounded-circle" alt="" src="assets/img/customer/user14.jpg">
														</a>
														<a href="javascript:void(0);">Lê Thị H</a>
													</span>
												</td>
												<td>
													<span class="table-avatar">
														<a href="#" class="avatar avatar-sm mr-2">
															<img class="avatar-img rounded-circle" alt="" src="assets/img/product/product-7.jpg">
														</a>
														<a href="javascript:void(0);">Bí Mật Tư Duy Triệu Phú </a>
													</span>
												</td>
												<td>76.000 VNĐ</td>
												<td>
													<label class="badge badge-dark">Đang chờ xử lí</label>
												</td>
												<td>
													<a href="service-details.html" class="btn btn-sm bg-info-light">
														<i class="far fa-eye mr-1"></i> Chi tiết
													</a>
												</td>
											</tr>
											<tr>
												<td>order-08</td>
												<td>
													<span class="table-avatar">
														<a href="#" class="avatar avatar-sm mr-2">
															<img class="avatar-img rounded-circle" alt="" src="assets/img/customer/user19.jpg">
														</a>
														<a href="javascript:void(0);">Lý Thị J</a>
													</span>
												</td>
												<td>
													<span class="table-avatar">
														<a href="#" class="avatar avatar-sm mr-2">
															<img class="avatar-img rounded-circle" alt="" src="assets/img/product/product-8.jpg">
														</a>
														<a href="javascript:void(0);">22 Quy Luật Bất Biến Trong Marketing </a>
													</span>
												</td>
												<td>46.000 VNĐ</td>
												<td>
													<label class="badge badge-primary">Hoàn thành</label>
												</td>
												<td>
													<a href="service-details.html" class="btn btn-sm bg-info-light">
														<i class="far fa-eye mr-1"></i> Chi tiết
													</a>
												</td>
											</tr>
											<tr>
												<td>order-09</td>
												<td>
													<span class="table-avatar">
														<a href="#" class="avatar avatar-sm mr-2">
															<img class="avatar-img rounded-circle" alt="" src="assets/img/customer/user12.png">
														</a>
														<a href="javascript:void(0);">Hà Văn G</a>
													</span>
												</td>
												<td>
													<span class="table-avatar">
														<a href="#" class="avatar avatar-sm mr-2">
															<img class="avatar-img rounded-circle" alt="" src="assets/img/product/product-9.jpg">
														</a>
														<a href="javascript:void(0);">Giá Trong Chiến Lược Kinh Doanh</a>
													</span>
												</td>
												<td>85.000 VNĐ</td>
												<td>
													<label class="badge badge-info">Đang xử lí</label>
												</td>
												<td>
													<a href="service-details.html" class="btn btn-sm bg-info-light">
														<i class="far fa-eye mr-1"></i> Chi tiết
													</a>
												</td>
											</tr>
											
										</tbody>
									</table>
								</div>
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

	<!-- Datepicker Core JS -->
	<script src="assets/js/moment.min.js"></script>
	<script src="assets/js/bootstrap-datetimepicker.min.js"></script>

	<!-- Slimscroll JS -->
	<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

	<!-- Datatables JS -->
	<script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
	<script src="assets/plugins/datatables/datatables.min.js"></script>

	<!-- Select2 JS -->
	<script src="assets/js/select2.min.js"></script>

	<!-- Custom JS -->
	<script src="assets/js/admin.js"></script> 

</body>

</html>