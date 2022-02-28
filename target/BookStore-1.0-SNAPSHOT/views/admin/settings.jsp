<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 12/8/2021
  Time: 11:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
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
                            <li><a href="total-report.html">Danh sách đặt hàng</a></li>
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
                            <li><a href="service-list.html">Nhà cung cấp</a></li>
                            <li><a href="publisher.html">Nhà xuất bản</a></li>
                        </ul>
                    </li>
                    <li >
                        <a href="admin-profile.html" ><i class="fas fa-user-plus"></i> <span>Thông tin cá nhân</span></a>
                    </li>
                    <li  class="active">
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