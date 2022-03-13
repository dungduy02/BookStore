
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>


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
        <div class="row" style="margin-top: 20px">
            <div class="col-lg-3">
                <div class="header__logo">
                   <img src="../template/web/img/logo.png" alt="" style="height: 85%;width: 100px">
                </div>
            </div>
            <div class="col-lg-6">
                <nav class="header__menu">
                    <ul>
                        <li class="active"><a href="<c:url value = "/"/>">Trang Chủ</a></li>
                        <li><a href="<c:url value = "/shop"/>">Mua Sắm</a></li>

                        <li><a href="#">Bài Viết</a></li>
                        <li><a href="<c:url value = "/contact"/>">Liên Hệ</a></li>
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
    <!-- Hero Section Begin -->
    <section class="hero">
        <div class="container">
            <div class="row">

                <div class="col-lg-9" style="margin: 0 auto">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="<c:url value="/search"/>">
                                <select id = "filterSearch" name ="filter">
                                    <option value="name">Sản phẩm</option>
                                </select>
                                <input type="text" placeholder="Tìm kiếm sách mong muốn...." name="keyword">
                                <button  type="submit" class="site-btn">TÌM</button>
                            </form>
                        </div>
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>+841234567</h5>
                                <span>Hỗ trợ 24/7</span>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
</header>
