
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
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


</head>

<body>

    <div class="login-page">
        <div class="login-body container">
            <div class="loginbox">
                <div class="login-right-wrap">
                    <div class="account-header">
                        <div class="account-logo text-center mb-4">
                            <a href="dashboard.html">
                                <img src="assets/img/logo-icon.png" alt="" class="img-fluid">
                            </a>
                        </div>
                    </div>
                    <div class="login-header">
                        <h3>Quên mật khẩu?</h3>
                        <p class="text-muted">Nhập email để lấy mật khẩu</p>
                    </div>
                    <form action="dashboard.html">
                        <div class="form-group mb-4">
                            <label class="control-label">Email</label>
                            <input class="form-control" type="text" placeholder="Nhập địa chỉ email">
                        </div>
                        <div class="text-center">
                            <button class="btn btn-primary btn-block account-btn" type="submit">Reset Password</button>
                        </div>
                    </form>


                    <div class="text-center dont-have">Nhớ mật khẩu? <a href="login.html">Đăng nhập</a></div>
                </div>
            </div>
        </div>
    </div>

</body>

</html>