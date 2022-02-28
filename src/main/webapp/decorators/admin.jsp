<%--
  Created by IntelliJ IDEA.
  User: DUNGDUY
  Date: 2/28/2022
  Time: 4:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title><dec:title default="Trang chủ Admin"/> </title>
    <link href="assets/img/icon/icon-logo.png" rel="shortcut icon">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<c:url value='/template/admin/assets/plugins/bootstrap/css/bootstrap.min.css' />">

    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="<c:url value='/template/admin/assets/plugins/fontawesome/css/fontawesome.min.css' />">
    <link rel="stylesheet" href="<c:url value='/template/admin/assets/plugins/fontawesome/css/all.min.css' />">
    <link rel="stylesheet" href="<c:url value='/template/admin/assets/css/font-awesome.min.css' />">

    <!-- Animate CSS -->
    <link rel="stylesheet" href="<c:url value='/template/admin/assets/css/animate.min.css' />">

    <!-- Main CSS -->
    <link rel="stylesheet" href="<c:url value='/template/admin/assets/css/admin.css' />">

</head>
<body>


<%--<%@include file="/common/admin/header.jsp"%>--%>
<!-- Header Section End -->
<div class="container">
    <dec:body />
</div>
<!-- Blog Section End -->

<%--<%@include file="/common/admin/footer.jsp"%>--%>

<!-- jQuery -->
<script src="<:c:url value='/template/admin/assets/js/jquery-3.5.0.min.js' />"></script>

<!-- Bootstrap Core JS -->
<script src="<c:url value='/template/admin/assets/js/popper.min.js' />"></script>
<script src="<c:url value='/template/admin/assets/plugins/bootstrap/js/bootstrap.min.js' />"></script>

<!-- Custom JS -->
<script src="<c:url value='/template/admin/assets/js/admin.js' />"></script>

</body>
</html>
