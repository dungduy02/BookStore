
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>

<%--<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">--%>
<%--    <div class="modal-dialog" role="document">--%>
<%--        <form action="LoginController" method="post">--%>
<%--            <div class="modal-content clearfix">--%>
<%--                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>--%>
<%--                <div class="modal-body">--%>
<%--                    <h3 class="title"> Đăng nhập </h3>--%>
<%--                    <p class="description"></p>--%>
<%--                    <div class="form-group">--%>
<%--                        <span class="input-icon"><i class="fa fa-user"></i></span>--%>
<%--                        <input type="text" class="form-control" placeholder="Tên tài khoản" name="username">--%>
<%--                    </div>--%>
<%--                    <div class="form-group">--%>
<%--                        <span class="input-icon"><i class="fa fa-key"></i></span>--%>
<%--                        <input type="password" class="form-control" placeholder="Mật khẩu" name="password">--%>
<%--                    </div>--%>
<%--                    <div class="form-group checkbox">--%>
<%--                        <input type="checkbox">--%>
<%--                        <label>Lưu</label>--%>
<%--                    </div>--%>
<%--                    <a href="register.jsp" class="forgot-pass">Quên mật khẩu?</a>--%>
<%--                    <button class="btn" type="submit">Đăng nhập</button>--%>
<%--                </div>--%>
<%--            </div></form>--%>
<%--    </div>--%>
<%--</div>--%>

<!-- Header Section Begin -->
<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__left">
                        <ul>
                            <li><i class="fa fa-envelope"></i> bookstoreNLU@gmail.com</li>
                            <li>Miễn Phí Giao Hàng Cho Các Đơn Từ 499.000 VND</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__right">
                        <div class="header__top__right__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                            <a href="#"><i class="fa fa-pinterest-p"></i></a>
                        </div>
                        <c:if test="${not empty USERMODEL}">
                        <div class="header__top__right__register">
                            <p href="<c:url value = "#"/>"> ${USERMODEL.fullname}</p>
                        </div>
                        <div class="header__top__right__auth">
                            <!-- sau chinh sua -->
                            <div class="modal-box">
                                <a href="<c:url value="/Dang-nhap?action=logout" />">
                                    <button type="button" class=" btn-lg show-modal fa fa-sign-out" aria-hidden="true">  Đăng xuất</button>
                                </a>
                                <!-- Modal -->


                            </div>
                        </div>
                        </c:if>
                        <c:if test="${ empty USERMODEL}">
                            <div class="header__top__right__auth">
                                <!-- sau chinh sua -->
                                <div class="modal-box">
                                    <!-- Button trigger modal -->
                                    <a href="<c:url value = "/Dang-nhap"/>">
                                    <button type="button" class=" btn-lg show-modal" data-toggle="modal" data-target="#myModal">
                                        Đăng nhập
                                    </button>
                                    </a>
                                    <!-- Modal -->
                                </div>
                            </div>
                            <div class="header__top__right__register">
                                <!-- <img src="img/language.png" alt=""> -->
                                <a href="<c:url value = "/dang-ky"/>" >
                                    <button type="button" class=" btn-lg show-modal" data-toggle="modal" data-target="#myModal">
                                        Đăng ký
                                    </button>
                                </a>
                            </div>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="header__logo">
                    <a href="#"><img src="../../template/web/img/logo.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-6">
                <nav class="header__menu">
                    <ul>
                        <li class="active"><a href="<c:url value = "/"/>">Trang Chủ</a></li>
                        <li><a href="<c:url value = "/shop"/>">Mua Sắm</a></li>
                        <li><a href="#">Giảm Giá</a>

                        </li>
                        <li><a href="#">Bài Viết</a></li>
                        <li><a href="#">Liên Hệ</a></li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-3">
                <div class="header__cart">
                    <ul>
                        <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                        <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                    </ul>
                    <div class="header__cart__price">Tổng: <span>150.000 VND</span></div>
                </div>
            </div>
        </div>
        <div class="humberger__open">
            <i class="fa fa-bars"></i>
        </div>
    </div>
</header>
