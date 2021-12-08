<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 12/8/2021
  Time: 11:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="vi-VN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Chi tiết đơn hàng</title>
    <link href="assets/img/icon/icon-logo.png" rel="shortcut icon">



    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">

    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
    <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">

    <!-- Datatables CSS -->
    <link rel="stylesheet" href="assets/plugins/datatables/datatables.min.css">

    <!-- Datepicker CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap-datetimepicker.min.css">

    <!-- Animate CSS -->
    <link rel="stylesheet" href="assets/css/animate.min.css">

    <!-- Main CSS -->
    <link rel="stylesheet" href="assets/css/admin.css">
    <script src="assets/js/tinymce/tinymce.min.js"></script>
    <script src="assets/js/tinymce.js"></script>

</head>

<body>
<div class="main-wrapper">

    <!-- Header -->
    <div class="header">
        <div class="header-left">
            <a href="dashboard.html" class="logo logo-small">
                <img src="assets/img/logo-icon.png" alt="Logo" width="30" height="30">
            </a>
        </div>
        <a href="javascript:void(0);" id="toggle_btn">
            <i class="fas fa-align-left"></i>
        </a>
        <a class="mobile_btn" id="mobile_btn" href="javascript:void(0);">
            <i class="fas fa-align-left"></i>
        </a>

        <ul class="nav user-menu">

            <!-- User Menu -->
            <li class="nav-item dropdown">
                <a href="javascript:void(0)" class="dropdown-toggle user-link  nav-link" data-toggle="dropdown">
						<span class="user-img">
							<img class="rounded-circle" src="assets/img/user.jpg" width="40" alt="Admin">
						</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="admin-profile.html">Thông tin cá nhân</a>
                    <a class="dropdown-item" href="login.html">Đăng xuất</a>
                </div>
            </li>
            <!-- /User Menu -->

        </ul>
    </div>
    <!-- /Header -->

    <!-- Sidebar -->
    <div class="sidebar" id="sidebar">
        <div class="sidebar-logo">
            <a href="dashboard.html">
                <img src="assets/img/logo-icon.png" class="img-fluid" alt="">
            </a>
        </div>
        <div class="sidebar-inner">
            <div id="sidebar-menu" class="sidebar-menu">
                <ul>
                    <li >
                        <a href="dashboard.html"><i class="fas fa-columns"></i> <span>Dashboard</span></a>
                    </li>
                    <li class="submenu">
                        <a href="#"><i class="fas fa-tasks"></i> <span>Quản lí</span> <span class="menu-arrow"></span></a>
                        <ul style="display: none;">
                            <li><a href="categories.html">Danh mục</a></li>
                            <li><a href="product.html" >Sản phẩm</a></li>
                            <li><a href="blog.html" >Blog</a></li>
                            <!-- <li><a href="coupon-code-type.html">Loại mã giảm giá</a></li>
                            <li><a href="coupon-code.html">Mã giảm giá</a></li>
                            <li><a href="ratingstype.html">Loại đánh giá</a></li>
                            <li><a href="email.html">Email</a></li> -->


                        </ul>
                    </li>

                    <li class="submenu">
                        <a href="#"><i class="fas fa-shopping-cart"></i><span>Bán hàng</span> <span class="menu-arrow"></span></a>
                        <ul style="display: none;">
                            <li><a href="total-report.html"  class="active" >Danh sách đặt hàng</a></li>
                            <!-- <li><a href="shipments.html">Vận chuyển</a></li>
                            <li><a href="return-request.html">Bảo hành</a></li>
                            <li><a href="review-reports.html">Đánh giá sản phẩm</a></li> -->


                        </ul>
                    </li>

                    <li class="submenu">
                        <a href="#"><i class="fas fa-users"></i><span>Người dùng</span> <span class="menu-arrow"></span></a>
                        <ul style="display: none;">
                            <li><a href="users.html">Khách hàng</a></li>
                            <li><a href="admin-list.html">Danh sách admin</a></li>
                            <li><a href="service-list.html" >Nhà cung cấp</a></li>
                            <li><a href="publisher.html">Nhà xuất bản</a></li>
                        </ul>
                    </li>
                    <li >
                        <a href="admin-profile.html" ><i class="fas fa-user-plus"></i> <span>Thông tin cá nhân</span></a>
                    </li>
                    <li>
                        <a href="settings.html"><i class="fas fa-cog"></i> <span>Thiết lập</span></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- /Sidebar -->

    <div class="page-wrapper">
        <div class="content container-fluid">

            <!-- Page Header -->
            <div class="page-header">
                <div class="row">
                    <div class="col">
                        <h3 class="page-title">Chi tiết đơn hàng</h3>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="total-report.html">Đanh sách đơn đặt hàng</a></li>
                            <li class="breadcrumb-item active">Xem danh sách đơn đặt hàng</li>
                        </ul>
                    </div>

                </div>
            </div>
            <!-- /Page Header -->

            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header" data-toggle="collapse" data-target="#gener-info" role="button" aria-expanded="false" aria-controls="gener-info">
                            <h4 class="card-title">Thông tin chung</h4>
                        </div>
                        <div class="collapse card-body" id="gener-info">
                            <form action="#">
                                <div class="form-group row">
                                    <label class="col-md-3">ID đơn hàng</label>
                                    <div class="col-md-9">
                                        1
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3">Mã người mua</label>
                                    <div class="col-md-9">
                                        customer-01
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3">Người mua</label>
                                    <div class="col-md-9">
                                        Nguyễn Văn An
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3">Trạng thái</label>
                                    <div class="col-md-9">
                                        Edit code here
                                    </div>
                                </div>
                                <!-- <div class="form-group row">
                                    <label class="col-md-3">Tổng tiền</label>
                                    <div class="col-md-9">
                                        125.000 VNĐ
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3">Tiền vận chuyển</label>
                                    <div class="col-md-9">
                                        15.000 VNĐ
                                    </div>
                                </div> -->
                                <div class="form-group row">
                                    <label class="col-md-3">Thành tiền</label>
                                    <div class="col-md-9">
                                        140.000 VNĐ
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3">Phương thức thanh toán</label>
                                    <div class="col-md-9">
                                        Tiền mặt
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3">Trạng thái thanh toán</label>
                                    <div class="col-md-9">
                                        Chờ thanh toán
                                    </div>
                                </div>


                            </form>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" data-toggle="collapse" data-target="#customer-info" role="button" aria-expanded="false" aria-controls="customer-info" >
                            <h4 class="card-title">Địa chỉ giao hàng</h4>
                        </div>
                        <div class="collapse card-body" id="customer-info">
                            <form action="#">
                                <div class="form-group row">
                                    <label class="col-md-3">Tên người nhận</label>
                                    <div class="col-md-9">
                                        Nguyễn Văn An
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3">Email</label>
                                    <div class="col-md-9">
                                        nguyenvanan@gmail.com
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3">Số điện thoại</label>
                                    <div class="col-md-9">
                                        0335126487
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3">Địa chỉ</label>
                                    <div class="col-md-9">
                                        Phường Linh Trung, Thủ Đức, Ho Chi Minh City
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3">Ghi chú</label>
                                    <div class="col-md-9">
                                        Không
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="card" data-toggle="collapse" data-target="#product-info" role="button" aria-expanded="false" aria-controls="product-info">
                        <div class="card-header" >
                            <h4 class="card-title">Sản phẩm mua</h4>
                        </div>
                        <div class="collapse card-body" id="product-info">
                            <form action="#">
                                <div class="form-group row">
                                    <label class="col-md-3">ID sản phẩm</label>
                                    <div class="col-md-9">
                                        1
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3">Tên sản phẩm</label>
                                    <div class="col-md-9">
                                        Nhà Giả Kim
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3">Số lượng</label>
                                    <div class="col-md-9">
                                        1
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3">Giá</label>
                                    <div class="col-md-9">
                                        65.000 VNĐ
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- <script src="assets/js/jquery-3.5.0.min.js"></script> -->

<!-- Bootstrap Core JS -->
<script src="assets/js/popper.min.js"></script>
<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>

<!-- Datepicker Core JS -->
<script src="assets/js/moment.min.js"></script>
<script src="assets/js/bootstrap-datetimepicker.min.js"></script>

<!-- Slimscroll JS -->
<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Datatables JS -->
<script src="assets/plugins/datatables/datatables.min.js"></script>

<!-- Custom JS -->
<script src="assets/js/admin.js"></script>

</body>

</html>
