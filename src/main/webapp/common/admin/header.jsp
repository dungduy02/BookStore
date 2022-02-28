<%--
  Created by IntelliJ IDEA.
  User: DUNGDUY
  Date: 2/28/2022
  Time: 9:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<div class="main-wrapper">

    <!-- Header -->
    <div class="header">
        <div class="header-left">
            <a href="dashboard.jsp" class="logo logo-small">
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
            <!-- Notifications -->
            <li class="nav-item dropdown noti-dropdown">
                <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                    <i class="far fa-bell"></i>  <span class="badge badge-pill"></span>
                </a>
                <div class="dropdown-menu dropdown-menu-right notifications">
                    <div class="topnav-dropdown-header">
                        <span class="notification-title">Thông Báo</span>
                        <a href="javascript:void(0)" class="clear-noti"> xóa tất cả </a>
                    </div>
                    <div class="noti-content">
                        <ul class="notification-list">
                            <li class="notification-message">
                                <a href="admin-notification.jsp">
                                    <div class="media">
															<span class="avatar avatar-sm">
																<img class="avatar-img rounded-circle" alt="" src="assets/img/customer/ong.jpg">
															</span>
                                        <div class="media-body">
                                            <p class="noti-details">
                                                <span class="noti-title">Nguyễn Văn An đã gửi phản hồi</span>
                                            </p>
                                            <p class="noti-time">
                                                <span class="notification-time">15 Tháng Chín 2020 10:20</span>
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="notification-message">
                                <a href="notification-detail.jsp">
                                    <div class="media">
															<span class="avatar avatar-sm">
																<img class="avatar-img rounded-circle" alt="" src="assets/img/customer/user21.jpg">
															</span>
                                        <div class="media-body">
                                            <p class="noti-details">
                                                <span class="noti-title">Trần Thị Hà đã gửi phản hồi</span>
                                            </p>
                                            <p class="noti-time">
                                                <span class="notification-time">13 Tháng Chín 2021 15:56</span>
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="notification-message">
                                <a href="admin-notification.jsp">
                                    <div class="media">
															<span class="avatar avatar-sm">
																<img class="avatar-img rounded-circle" alt="" src="assets/img/customer/user22.jpg">
															</span>
                                        <div class="media-body">
                                            <p class="noti-details">
                                                <span class="noti-title">Biên Thị Anh đã gửi phản hồi</span>
                                            </p>
                                            <p class="noti-time">
                                                <span class="notification-time">12 Tháng Chín 2021 06:05 </span>
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="notification-message">
                                <a href="admin-notification.jsp">
                                    <div class="media">
															<span class="avatar avatar-sm">
																<img class="avatar-img rounded-circle" alt="User Image" src="assets/img/customer/user23.jpg">
															</span>
                                        <div class="media-body">
                                            <p class="noti-details">
                                                <span class="noti-title">Ngô Thế Thanh đã gửi phản hồi</span>
                                            </p>
                                            <p class="noti-time">
                                                <span class="notification-time">11 Tháng Chín 2021 12:04 </span>
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="notification-message">
                                <a href="admin-notification.jsp">
                                    <div class="media">
															<span class="avatar avatar-sm">
																<img class="avatar-img rounded-circle" alt="User Image" src="assets/img/customer/user24.jpg">
															</span>
                                        <div class="media-body">
                                            <p class="noti-details">
                                                <span class="noti-title">Dương Thị Vàng đã gửi phản hồi</span>
                                            </p>
                                            <p class="noti-time">
                                                <span class="notification-time">10 Tháng Chín 2021 08:42</span>
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="notification-message">
                                <a href="admin-notification.jsp">
                                    <div class="media">
															<span class="avatar avatar-sm">
																<img class="avatar-img rounded-circle" alt="User Image" src="assets/img/customer/user25.jpg">
															</span>
                                        <div class="media-body">
                                            <p class="noti-details">
                                                <span class="noti-title">Lưu Hồng đã gửi phản hồi</span>
                                            </p>
                                            <p class="noti-time">
                                                <span class="notification-time">9 Tháng Chín 2021 11:01 </span>
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="notification-message">
                                <a href="admin-notification.jsp">
                                    <div class="media">
															<span class="avatar avatar-sm">
																<img class="avatar-img rounded-circle" alt="User Image" src="assets/img/customer/user26.jpg">
															</span>
                                        <div class="media-body">
                                            <p class="noti-details">
                                                <span class="noti-title">Trương Thị Bạc đã gửi phản hồi</span>
                                            </p>
                                            <p class="noti-time">
                                                <span class="notification-time">8 Tháng Chín 2021 06:23 </span>
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="topnav-dropdown-footer">
                        <a href="admin-notification.jsp">Tất cả Thông báo</a>
                    </div>
                </div>
            </li>
            <!-- /Notifications -->
            <!-- User Menu -->
            <li class="nav-item dropdown">
                <a href="javascript:void(0)" class="dropdown-toggle user-link  nav-link" data-toggle="dropdown">
						<span class="user-img">
							<img class="rounded-circle" src="assets/img/user.jpg" width="40" alt="Admin">
						</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="admin-profile.jsp">Thông tin cá nhân</a>
                    <a class="dropdown-item" href="login.jsp">Đăng xuất</a>
                </div>
            </li>
            <!-- /User Menu -->

        </ul>
    </div>
    <!-- /Header -->
</div>