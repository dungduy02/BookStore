<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>BOOKSTORE NLU | Yêu thích</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

</head>

<body>

<!-- Hero Section Begin -->
<section class="hero hero-normal">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="hero__categories">
                    <div class="hero__categories__all">
                        <i class="fa fa-bars"></i>
                        <span>Danh mục</span>
                    </div>
                    <ul>
                        <li><a href="#">Văn Học</a></li>
                        <li><a href="#">Kinh Tế</a></li>
                        <li><a href="#">Tâm Lý</a></li>
                        <li><a href="#">Kĩ Năng Sống</a></li>
                        <li><a href="#">Nuôi dạy con</a></li>
                        <li><a href="#">Sách Thiếu Nhi</a></li>
                        <li><a href="#">Tiểu Sử</a></li>
                        <li><a href="#">Giáo Dục</a></li>
                        <li><a href="#">Ngoại Ngữ</a></li>
                        <li><a href="#">Tham Khảo</a></li>
                        <li><a href="#">Khác</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="hero__search">
                    <div class="hero__search__form">
                        <form action="#">

                            <input type="text" placeholder="Tìm tên sách mong muốn ...?">
                            <button type="submit" class="site-btn">Tìm Kiếm</button>
                        </form>
                    </div>
                    <div class="hero__search__phone">
                        <div class="hero__search__phone__icon">
                            <i class="fa fa-phone"></i>
                        </div>
                        <div class="hero__search__phone__text">
                            <h5>+84 123 456 789</h5>
                            <span>Hỗ trợ 24/7</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Hero Section End -->

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>Yêu Thích</h2>
                    <div class="breadcrumb__option">
                        <a href="./index.html">Trang Chủ</a>
                        <span>Yêu Thích</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Shoping Cart Section Begin -->
<section class="shoping-cart spad">
    <div class="container">
        <div class="row">

            <div class="col-lg-12">

                <div class="shoping__cart__table">

                    <table>
                        <thead>
                        <tr>
                            <th class="shoping__product">Sản Phẩm Yêu Thích</th>
                            <th style="width: 30%; margin-right: 30px;">Giá</th>
                            <th>Tổng Tiền</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="shoping__cart__item">
                                <img src="../../img/product/product-9.jpg" alt="" style="width: 30%;">
                                <h5>Tập Viết 3</h5>
                            </td>
                            <td class="shoping__cart__price">
                                55.000 VND
                            </td>

                            <td class="shoping__cart__total">
                                55.000 VND
                            </td>
                            <td class="shoping__cart__item__close">
                                <i class="fa fa-trash" aria-hidden="true"></i>
                            </td>
                        </tr>
                        <tr>
                            <td class="shoping__cart__item">
                                <img src="../../img/categories/cat-1.jpg" alt="" style="width: 30%;">
                                <h5>Nhà Đầu Tư Thông Minh</h5>
                            </td>
                            <td class="shoping__cart__price">
                                99.000 VND
                            </td>

                            <td class="shoping__cart__total">
                                99.000 VND
                            </td>
                            <td class="shoping__cart__item__close">
                                <i class="fa fa-trash" aria-hidden="true"></i>
                            </td>
                        </tr>
                        <tr>
                            <td class="shoping__cart__item">
                                <img src="../../img/categories/cat-3.jpg" alt="" style="width: 30%;">
                                <h5>Hai Số Phận</h5>
                            </td>
                            <td class="shoping__cart__price">
                                69.000 VND
                            </td>

                            <td class="shoping__cart__total">
                                69.000 VND
                            </td>
                            <td class="shoping__cart__item__close">
                                <i class="fa fa-trash" aria-hidden="true"></i>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="shoping__cart__btns">
                    <a href="#" class="primary-btn cart-btn" style="background-color: lightblue; color:gray;">Thêm vào giỏ hàng</a>
                    <a href="#" class="primary-btn cart-btn cart-btn-right"style="background-color: lightblue; color:gray;"><span class="icon_loading"></span>
                        Cập Nhật</a>
                </div>
            </div>


        </div>
    </div>
</section>
<!-- Shoping Cart Section End -->
</body>

</html>