<%@include file="/common/taglib.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="BookStore.Model.OrderDetails" %>
<%@ page import="BookStore.Model.Cart" %>
<%@ page import="BookStore.Model.Product" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>BOOKSTORE NLU | Đơn hàng</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet"></head>
<body>
<div style="text-align: center; font-size: 35px"><b>THÔNG TIN ĐƠN HÀNG</b></div>
<div class="col-md-12 center-column " id="content">

    <form method="get">

        <div style="font-size: 20px; margin: 10px 5px;">
            <c:if test="${not empty bill}">
                <div>Họ và tên: &nbsp;&nbsp;<span style="margin-left: 50px;"><b>${bill.fullname}</b></span></div>
                <div>Phone:     &nbsp;&nbsp; <span style="margin-left: 70px;">${bill.phone}</span></div>
                <div>Address:   &nbsp;&nbsp; <span style="margin-left: 60px;">${bill.address}</span></div>
                <div>Emaill:    &nbsp;&nbsp; <span style="margin-left: 80px;">${bill.email}</span></div>
                <div>Note:      &nbsp;&nbsp; <span style="margin-left: 90px;">${bill.note}</span></div>
            </c:if>
        </div>
        <table class="table table-hover table-bordered">
            <thead>
            <tr>
                <th class="product-thumnail">Hình ảnh</th>
                <th class="product-name">Tên sản phẩm</th>
                <th class="product-price">Giá</th>
                <th class="product-quantity">Số lượng</th>
                <th colspan="product-total">Tổng cộng </th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${cart.items}" var="item">
            <tr>
                <td>
                    <img src="<c:url value='${item.product.img}' /> " alt="" style="width: 30%;">
                        <%--                    <img src="<c:url value='${item.product.img}' /> " height="78" width="78">--%>
                </td>
                <td>${item.product.name}</td>
                <td> ${item.price}</td>
                <td>${item.quantity}</td>
                <td>${item.price * item.quantity}</td>
            </tr>
            </c:forEach>
            <div class="card-total">

                <table>
                    <tbody>
                    <tr>
                        <div class="buttons" style="min-height: 15px">
                            <c:if test="${not empty bill}">
                                <a class="hidden-xs"

                                   href="<c:url value = "/Trangchu?action=remove"/>"><strong><i
                                        class="fa fa-caret-right"></i> Quay lại trang chính</strong></a>
                            </c:if>

                        </div>
                    </tr>

                    </tbody>
                </table>
            </div>
        </table>
    </form>
</div>
</body>
</html>
