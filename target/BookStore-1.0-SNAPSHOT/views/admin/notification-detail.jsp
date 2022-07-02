<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="vi-VN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Chi tiết phản hồi</title>
    <link href="assets/img/icon/icon-logo.png" rel="shortcut icon">

    <!-- Favicons -->
    <link rel="shortcut icon" href="assets/img/favicon.png">

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
<div class="content container-fluid">

    <!-- Page Header -->
    <div class="page-header">
        <div class="row">
            <div class="col">
                <h3 class="page-title">Chi Tiết Phản Hồi</h3>
            </div>
        </div>
    </div>
    <!-- /Page Header -->

    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <form action="#">
                        <div class="form-group row">
                            <label class="col-form-label col-md-2">Họ tên</label>
                            <div class="col-md-10">
                                <input type="text" class="form-control" value="Mai Thị Vân" readonly="readonly">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-form-label col-md-2">Email</label>
                            <div class="col-md-10">
                                <input type="email" class="form-control" value="van@gmail.com" readonly="readonly">
                            </div>
                        </div>
                        <!-- <div class="form-group row">
                            <label class="col-form-label col-md-2">Ngày gửi</label>
                            <div class="col-md-10">
                                <input type="date" class="form-control" value="15/09/2020" readonly="readonly">
                            </div>
                        </div> -->
                        <div class="form-group row">
                            <label class="col-form-label col-md-2">Phản hồi của bạn</label>
                            <div class="col-md-10">
                                <textarea rows="5" cols="5" class="form-control" readonly="readonly">Sách in không rõ chữ</textarea>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>

</div>

</body>

</html>