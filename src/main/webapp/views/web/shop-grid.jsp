<%@ page import="java.util.List" %>
<%@ page import="BookStore.Model.Product" %>
<%@ page import="BookStore.Service.ProductDAO" %>
<%@ page import="BookStore.Model.Category" %>
<%@ page import="BookStore.Service.CategoryDAO" %>
<%@ page import="BookStore.Model.Publisher" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-eq uiv="X-UA-Compatible" content="ie=edge">
    <title>BOOKSTORE NLU | Sản phẩm</title>

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
                            <!-- <div class="hero__search__categories">
                                All Categories
                                <span class="arrow_carrot-down"></span>
                            </div> -->
                            <input type="text" placeholder="Tìm kiếm sách mong muốn....">
                            <button type="submit" class="site-btn">TÌM</button>
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
<!-- Hero Section End -->

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>Sản phẩm</h2>
                    <div class="breadcrumb__option">
                        <a href="./index.html">Home</a>
                        <span>Sản phẩm</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Product Section Begin -->
<section class="product spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-5">
                <div class="sidebar">
                    <div class="sidebar__item">
                        <h4>Nhóm Sản Phẩm</h4>
                        <ul>
                            <li><a href="#">abc</a></li>
                        </ul>
                    </div>
                    <div class="sidebar__item">
                        <h4>Giá</h4>
                        <div class="price-range-wrap">
                            <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
                                 data-min="100" data-max="900000">
                                <div class="ui-slider-range ui-corner-all ui-widget-header"></div>
                                <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                                <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                            </div>
                            <div class="range-slider">
                                <div class="price-input">
                                    <input type="text" id="minamount">
                                    <input type="text" id="maxamount">
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="sidebar__item sidebar__item__color--option">
                        <h4>Nhà Cung Cấp</h4>


                        <ul>
                            <li ><a href="#">Tiểu thuyết</a></li>
                            <li ><a href="#">Tiểu thuyết</a></li>
                            <li ><a href="#">Tiểu thuyết</a></li>
                            <li ><a href="#">Tiểu thuyết</a></li>
                            <li ><a href="#">Tiểu thuyết</a></li>
                            <li ><a href="#">Tiểu thuyết</a></li>
                            <li ><a href="#">Tiểu thuyết</a></li>
                            <li ><a href="#">Tiểu thuyết</a></li>
                            <li ><a href="#">Tiểu thuyết</a></li>

                        </ul>


                    </div>

                    <div class="sidebar__item">
                        <div class="latest-product__text">
                            <h4>Nổi Bật</h4>
                            <div class="latest-product__slider owl-carousel">
                                <div class="latest-prdouct__slider__item">
                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="../../img/latest-product/lp-1.jpg" alt="">
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6>Khéo Ăn Nói Sẽ Có Được Thiên Hạ</h6>
                                            <span>60.5000 VND</span>
                                        </div>
                                    </a>
                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="../../img/latest-product/lp-2.jpg" alt="">
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6>Đắc Nhân Tâm</h6>
                                            <span>58.4000 VND</span>
                                        </div>
                                    </a>
                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="../../img/latest-product/lp-3.jpg" alt="">
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6>Thay Đổi Cuộc Sống Với Nhân Số Học</h6>
                                            <span>148.800 VND</span>
                                        </div>
                                    </a>
                                </div>
                                <div class="latest-prdouct__slider__item">
                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="../../img/latest-product/lp-1.jpg" alt="">
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6>Khéo Ăn Nói Sẽ Có Được Thiên Hạ</h6>
                                            <span>60.5000 VND</span>
                                        </div>
                                    </a>
                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="../../img/latest-product/lp-2.jpg" alt="">
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6>Đắc Nhân Tâm</h6>
                                            <span>58.4000 VND</span>
                                        </div>
                                    </a>
                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="../../img/latest-product/lp-3.jpg" alt="">
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6>Khéo Ăn Nói Sẽ Có Được Thiên Hạ</h6>
                                            <span>60.5000 VND</span>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-9 col-md-7">
                <div class="product__discount">
                    <div class="section-title product__discount__title">
                        <h2>Giảm Giá</h2>
                    </div>
                    <div class="row">
                        <div class="product__discount__slider owl-carousel">
                            <div class="col-lg-4">
                                <div class="product__discount__item">
                                    <div class="product__discount__item__pic set-bg"
                                         data-setbg="img/product/discount/pd-1.jpg">
                                        <div class="product__discount__percent">-30%</div>
                                        <ul class="product__item__pic__hover">
                                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="product__discount__item__text">
                                        <span>Hồi  ký</span>
                                        <h5><a href="#">Điệp Viên Hoàn Hảo X6</a></h5>
                                        <div class="product__item__price">117.600 VND <span>168.000 VND</span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="product__discount__item">
                                    <div class="product__discount__item__pic set-bg"
                                         data-setbg="img/product/discount/pd-2.jpg">
                                        <div class="product__discount__percent">-18%</div>
                                        <ul class="product__item__pic__hover">
                                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="product__discount__item__text">
                                        <span>Hồi  ký</span>
                                        <h5><a href="#">Lấy Nước Đường Xa</a></h5>
                                        <div class="product__item__price">56.580 VND <span>69.000 VND</span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="product__discount__item">
                                    <div class="product__discount__item__pic set-bg"
                                         data-setbg="img/product/discount/pd-3.jpg">
                                        <div class="product__discount__percent">-20%</div>
                                        <ul class="product__item__pic__hover">
                                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="product__discount__item__text">
                                        <span>Tiểu Sử</span>
                                        <h5><a href="#">Câu Chuyện Nghệ Thuật</a></h5>
                                        <div class="product__item__price">799.200 VND <span>999.000 VND</span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="product__discount__item">
                                    <div class="product__discount__item__pic set-bg"
                                         data-setbg="img/product/discount/pd-4.jpg">
                                        <div class="product__discount__percent">-10%</div>
                                        <ul class="product__item__pic__hover">
                                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="product__discount__item__text">
                                        <span>Hồi Ký</span>
                                        <h5><a href="#">Trump - Đừng Bao Giờ Bỏ Cuộc</a></h5>
                                        <div class="product__item__price">58.000 VND <span>65.000 VND</span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="product__discount__item">
                                    <div class="product__discount__item__pic set-bg"
                                         data-setbg="img/product/discount/pd-5.jpg">
                                        <div class="product__discount__percent">-15%</div>
                                        <ul class="product__item__pic__hover">
                                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="product__discount__item__text">
                                        <span>Tiểu Sử</span>
                                        <h5><a href="#">Cuộc Đời Kỳ Lạ Của Nikola Tesla</a></h5>
                                        <div class="product__item__price">65.250 VND <span>75.000 VND</span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="product__discount__item">
                                    <div class="product__discount__item__pic set-bg"
                                         data-setbg="img/product/discount/pd-6.jpg">
                                        <div class="product__discount__percent">-20%</div>
                                        <ul class="product__item__pic__hover">
                                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="product__discount__item__text">
                                        <span>Tiểu Sử</span>
                                        <h5><a href="#">Leonardo Da Vinci</a></h5>
                                        <div class="product__item__price">615.420 VND <span>789.000 VND</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="filter__item">
                    <div class="row">
                        <div class="col-lg-4 col-md-5">
                            <div class="filter__sort">
                                <span>Sắp xếp</span>
                                <select>
                                    <option value="0">Mới Nhất</option>
                                    <option value="0">Giá Cả</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4">
                            <div class="filter__found">
                                <h6><span>12</span> Sản phẩm đã được tìm thấy</h6>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-3">
                            <div class="filter__option">
                                <span class="icon_grid-2x2"></span>
                                <span class="icon_ul"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                <%
                    List<Product> list = new ProductDAO().getAllProduct();
                    request.setAttribute("listPr",list);
                %>
                   <c:forEach items="${listPr}" var="p">
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="${p.img}">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">${p.name}</a></h6>
                                <h5>${p.price}</h5>
                            </div>
                        </div>
                    </div>
                   </c:forEach>
                </div>



            </div>
                <div class="product__pagination">
                    <a href="#">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#"><i class="fa fa-long-arrow-right"></i></a>
                </div>
        </div>
    </div>
</section>
<!-- Product Section End -->
</body>
</html>
