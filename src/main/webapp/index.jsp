<%--
  Created by IntelliJ IDEA.
  User: DUNGDUY
  Date: 10/14/2021
  Time: 8:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-eq uiv="X-UA-Compatible" content="ie=edge">
    <title>Ogani | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>

<%@include file="header.jsp"%>

<!-- Hero Section Begin -->
<section class="hero">
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
                        <li><a href="#">Hồi Ký</a></li>
                        <li><a href="#">Khác</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="hero__search">
                    <div class="hero__search__form">
                        <form action="#">
                            <!-- <div class="hero__search__categories">
                                All Categories
                                <span class="arrow_carrot-down"></span>
                            </div> -->
                            <input type="text" placeholder="Tìm kiếm sách mong muốn....">
                            <button  type="submit" class="site-btn"><a style="color: white" href="./shop-grid.html">TÌM</a></button>
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
                <div class="hero__item set-bg" data-setbg="img/hero/banner.jpg">
                    <div class="hero__text">
                        <span>MUA HÀNG TẠI BOOKSTORE NLU</span>
                        <h2>Giảm ngay <br />20%</h2>
                        <p>Ưu đãi cho các đầu sách về Kinh Tế.</p>
                        <a href="shop-grid.html" class="primary-btn">SHOP NOW</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Hero Section End -->
<!-- Begin banner top -->
<section class="container ">
    <div class=" banner_top row set-bg" data-setbg="img/banner/bg1.png">
        <div class="col-lg-12">
            <h2>BOOKSTORE NLU</h2>
            <div class="row ">
                <p>Uy tính</p>
                <p>Chất lượng</p>
                <p>Tiện lợi</p>
            </div>
        </div>
    </div>
</section>

<!-- Breadcrumb Section Begin -->

<!-- Categories Section Begin -->
<section class="categories">
    <div class="section-title">
        <h4 class="tit-box">
            <a href="product-sale.html">Tìm Kiếm Hàng Đầu</a>
        </h4>
    </div>
    <div class="container">
        <div class="row">
            <div class="categories__slider owl-carousel">
                <div class="col-lg-3">
                    <div class="categories__item set-bg" data-setbg="img/categories/cat-1.jpg">
                        <h5><a href="#">Đầu Tư</a></h5>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="categories__item set-bg" data-setbg="img/categories/cat-2.jpg">
                        <h5><a href="#">Tiếng Anh</a></h5>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="categories__item set-bg" data-setbg="img/categories/cat-3.jpg">
                        <h5><a href="#">Văn Học</a></h5>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="categories__item set-bg" data-setbg="img/categories/cat-4.jpg">
                        <h5><a href="#">Tiểu Thuyết</a></h5>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="categories__item set-bg" data-setbg="img/categories/cat-5.jpg">
                        <h5><a href="#">Kinh Tế</a></h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Categories Section End -->

<!-- Featured Section Begin -->
<section class="featured spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <h2>NỔI BẬT</h2>
                </div>
                <!-- <div class="featured__controls">
                    <ul>
                        <li class="active" data-filter="*">All</li>
                        <li data-filter=".oranges">Oranges</li>
                        <li data-filter=".fresh-meat">Fresh Meat</li>
                        <li data-filter=".vegetables">Vegetables</li>
                        <li data-filter=".fastfood">Fastfood</li>
                    </ul>
                </div> -->
            </div>
        </div>
        <div class="row featured__filter">
            <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-1.jpg">
                        <ul class="featured__item__pic__hover">
                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                    <div class="featured__item__text">
                        <h6><a href="./shop-details.html">Từ Tốt Đến Vĩ Đại</a></h6>
                        <h5>50.000 VND</h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fastfood">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-2.jpg">
                        <ul class="featured__item__pic__hover">
                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                    <div class="featured__item__text">
                        <h6><a href="./shop-details.html">Nghĩ Giàu & Làm Giàu</a></h6>
                        <h5>65.000 VND</h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fresh-meat">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-3.jpg">
                        <ul class="featured__item__pic__hover">
                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                    <div class="featured__item__text">
                        <h6><a href="./shop-details.html">Trên Đỉnh Phố Wall</a></h6>
                        <h5>100.000 VND</h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood oranges">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-4.jpg">
                        <ul class="featured__item__pic__hover">
                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                    <div class="featured__item__text">
                        <h6><a href="./shop-details.html">Chết Vì Chứng Khoáng</a></h6>
                        <h5>200.000 VND</h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-5.jpg">
                        <ul class="featured__item__pic__hover">
                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                    <div class="featured__item__text">
                        <h6><a href="./shop-details.html">Tập Tô Màu Mẫu Giáo</a></h6>
                        <h5>4.500 VND</h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fastfood">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-6.jpg">
                        <ul class="featured__item__pic__hover">
                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                    <div class="featured__item__text">
                        <h6><a href="./shop-details.html">Chuyện Con Mèo Dạy Hải Âu Bay</a></h6>
                        <h5>30.000 VND</h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-7.jpg">
                        <ul class="featured__item__pic__hover">
                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                    <div class="featured__item__text">
                        <h6><a href="./shop-details.html">Tập Tô Màu Nhà Trẻ</a></h6>
                        <h5>7.900 VND</h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood vegetables">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-8.jpg">
                        <ul class="featured__item__pic__hover">
                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                    <div class="featured__item__text">
                        <h6><a href="./shop-details.html">Danh Nhân Thế Giới: ANHXTANH</a></h6>
                        <h5>45.000 VND</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Featured Section End -->

<!-- Banner Begin -->
<div class="banner">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="banner__pic">
                    <img src="img/banner/banner-1.jpg" alt="">
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="banner__pic">
                    <img src="img/banner/banner-2.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Banner End -->

<!-- Latest Product Section Begin -->
<section class="latest-product spad">
    <div class="section-title">
        <h4 class="tit-box">
            <a href="">Xem Thêm</a>
        </h4>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="latest-product__text">
                    <h4>Mới Nhất</h4>
                    <div class="latest-product__slider owl-carousel">
                        <div class="latest-prdouct__slider__item">
                            <a href="./shop-details.html" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-1.jpg" alt="">
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Khéo Ăn Nói Sẽ Có Được Thiên Hạ</h6>
                                    <span>60.500 VND</span>
                                </div>
                            </a>
                            <a href="./shop-details.html" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-2.jpg" alt="">
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Đắc Nhân Tâm</h6>
                                    <span>58.4000 VND</span>
                                </div>
                            </a>
                            <a href="./shop-details.html" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-3.jpg" alt="">
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Chủ Nghĩa Khắc Kỷ</h6>
                                    <span>100.000 VND</span>
                                </div>
                            </a>
                        </div>
                        <div class="latest-prdouct__slider__item">
                            <a href="./shop-details.html" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-4.jpg" alt="">
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Thay Đổi Cuộc Sống Với Nhân Số Học</h6>
                                    <span>148.800 VND</span>
                                </div>
                            </a>
                            <a href="./shop-details.html" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-5.jpg" alt="">
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Hiểu Về Trái Tim</h6>
                                    <span>110.400 VND</span>
                                </div>
                            </a>
                            <a href="./shop-details.html" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-6.jpg" alt="">
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Trên Đường Băng</h6>
                                    <span>68.000 VND</span>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="latest-product__text">
                    <h4>Giảm Giá</h4>
                    <div class="latest-product__slider owl-carousel">
                        <div class="latest-prdouct__slider__item">
                            <a href="./shop-details.html" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-7.jpg" alt="">
                                </div>
                                <div class="discount__precent">-15%</div>
                                <div class="latest-product__item__text">
                                    <h6>Rèn Luyện Tư Duy Phản Biện</h6>
                                    <span class="discount">79.200 VND</span>
                                    <span>110.400 VND</span>
                                </div>
                            </a>
                            <a href="./shop-details.html" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-8.jpg" alt="">
                                </div>
                                <div class="discount__precent">-15%</div>
                                <div class="latest-product__item__text">
                                    <h6>Kiếp Nào Ta Cũng Tìm Thấy Nhau</h6>
                                    <span class="discount">72.250 VND</span>
                                    <span>114.240 VND</span>
                                </div>
                            </a>
                            <a href="./shop-details.html" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-9.jpg" alt="">
                                </div>
                                <div class="discount__precent">-15%</div>
                                <div class="latest-product__item__text">
                                    <h6>OSHO - Yêu - Being In Love</h6>
                                    <span class="discount">155.240 VND</span>
                                    <span>140.800 VND</span>
                                </div>
                            </a>
                        </div>
                        <div class="latest-prdouct__slider__item">
                            <a href="./shop-details.html" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-1.jpg" alt="">
                                </div>
                                <div class="discount__precent">-15%</div>
                                <div class="latest-product__item__text">
                                    <h6>Khéo Ăn Nói Sẽ Có Được Thiên Hạ</h6>
                                    <span class="discount">60.5000 VND</span>
                                    <span>55.000 VND</span>
                                </div>
                            </a>
                            <a href="./shop-details.html" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-2.jpg" alt="">
                                </div>
                                <div class="discount__precent">-15%</div>
                                <div class="latest-product__item__text">
                                    <h6>Chủ Nghĩa Khắc Kỷ</h6>
                                    <span class="discount">130.000 VND</span>
                                    <span>100.000 VND</span>
                                </div>
                            </a>
                            <a href="./shop-details.html" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-3.jpg" alt="">
                                </div>
                                <div class="discount__precent">-15%</div>
                                <div class="latest-product__item__text">
                                    <h6>Thay Đổi Cuộc Sống Với Nhân Số Học</h6>
                                    <span class="discount">155.000 VND</span>
                                    <span>148.800 VND</span>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="latest-product__text">
                    <h4>Dành cho bạn</h4>
                    <div class="latest-product__slider owl-carousel">
                        <div class="latest-prdouct__slider__item">
                            <a href="./shop-details.html" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-4.jpg" alt="">
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Thay Đổi Cuộc Sống Với Nhân Số Học</h6>
                                    <span>110.400 VND</span>
                                </div>
                            </a>
                            <a href="./shop-details.html" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-5.jpg" alt="">
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Hiểu Về Trái Tim</h6>
                                    <span>68.000 VND</span>
                                </div>
                            </a>
                            <a href="./shop-details.html" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-6.jpg" alt="">
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Trên Đường Băng</h6>
                                    <span>79.200 VND</span>
                                </div>
                            </a>
                        </div>
                        <div class="latest-prdouct__slider__item">
                            <a href="./shop-details.html" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-7.jpg" alt="">
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Rèn Luyện Tư Duy Phản Biện</h6>
                                    <span>79.200 VND</span>
                                </div>
                            </a>
                            <a href="./shop-details.html" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-8.jpg" alt="">
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Kiếp Nào Ta Cũng Tìm Thấy Nhau y</h6>
                                    <span>148.800 VND</span>
                                </div>
                            </a>
                            <a href="./shop-details.html" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-9.jpg" alt="">
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>OSHO - Yêu - Being In Love</h6>
                                    <span>114.240 VND</span>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Latest Product Section End -->

<!-- Blog Section Begin -->
<section class="from-blog spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title from-blog__title">
                    <h2>BÀI BLOG MỚI NHẤT</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
                        <img src="img/blog/blog-1.jpg" alt="">
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                            <li><i class="fa fa-comment-o"></i> 5</li>
                        </ul>
                        <h5><a href="#">PROUST CÓ THỂ THAY ĐỔI CUỘC ĐỜI BẠN NHƯ THẾ NÀO</a></h5>
                        <p>Nếu đã chán ngấy những đầu sách self-help thì hãy “đối gió” một chút với “Proust có thể thay đổi cuộc đời bạn như thế nào” của Alain de Botton. Cuốn sách này gồm những quan điểm triết lý về cuộc sống, tình yêu, trí tuệ, cảm xúc qua góc nhìn của một nhà văn người Pháp Marcel Proust. </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
                        <img src="img/blog/blog-2.jpg" alt="">
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                            <li><i class="fa fa-comment-o"></i> 5</li>
                        </ul>
                        <h5><a href="#">THÁNH KINH COCO CHANEL</a></h5>
                        <p>Nếu đã theo dõi trang blog này từ trước chắc bạn sẽ biết rằng mình là một đứa “cuồng” lifestyle châu Âu, điển hình là đất nước Pháp. Nhân dịp mừng đội tuyển Pháp vô địch World Cup 2018, mình xin review cuốn sách viết về một nhân vật đình đám, một biểu tượng thời trang toàn cầu và góp phần làm nên đất nước Pháp gắn liền với hai từ “thanh lịch”....</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
                        <img src="img/blog/blog-3.jpg" alt="">
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                            <li><i class="fa fa-comment-o"></i> 5</li>
                        </ul>
                        <h5><a href="#">VỪA ĐỦ – ĐẲNG CẤP SỐNG CỦA NGƯỜI THỤY ĐIỂN</a></h5>
                        <p>Dạo gần đây xu hướng sống tối giản (minimalism) đang khá thịnh hành khi mà con người ta đã cơ bản đầy đủ về điều kiện vật chất. Điển hình cho lối sống này phải kể đến người Nhật với việc sắp xếp, bài trí nhà cửa siêu tinh gọn của họ. ...</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Blog Section End -->

<%@include file="footer.jsp"%>

<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>



</body>
</html>
