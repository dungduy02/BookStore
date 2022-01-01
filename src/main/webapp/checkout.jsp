<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>BOOKSTORE NLU | Thanh toán</title>

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
    <link rel="stylesheet" href="css/style-page.css">

</head>
<body>
   <%@include file="header.jsp"%>

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

                               <input type="text" placeholder="Tìm kiếm sách mong muốn ...">
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
                       <h2>Thanh Toán</h2>
                       <div class="breadcrumb__option">
                           <a href="./index.html">Trang Chủ</a>
                           <span>Thanh Toán</span>
                       </div>
                   </div>
               </div>
           </div>
       </div>
   </section>
   <!-- Breadcrumb Section End -->

   <!-- Checkout Section Begin -->
   <section class="checkout spad">
       <div class="container">
           <div class="row">
               <div class="col-lg-12">
                   <h6><span class="icon_tag_alt"></span> Nếu có mã giảm giá? <a href="./shoping-cart.html">Chọn ở đây</a> để nhập
                   </h6>
               </div>
           </div>
           <div class="checkout__form">
               <h4>Chi tiết hóa đơn</h4>
               <form action="#">
                   <div class="row">
                       <div class="col-lg-8 col-md-6">
                           <div class="row">
                               <div class="col-lg-6">
                                   <div class="checkout__input">
                                       <p>Họ<span>*</span></p>
                                       <input type="text">
                                   </div>
                               </div>
                               <div class="col-lg-6">
                                   <div class="checkout__input">
                                       <p>Tên<span>*</span></p>
                                       <input type="text">
                                   </div>
                               </div>
                           </div>

                           <div class="checkout__input">
                               <p>Địa chỉ<span>*</span></p>
                               <input type="text" placeholder="Nhập địa chỉ" class="checkout__input__add">
                               <div class="option">
                                   <div class="selectop">
                                       <label for="">Tỉnh/Thành </label><select name="" id="">
                                       <option value="">Đồng Tháp</option>
                                   </select>
                                   </div>
                                   <div class="selectop" style="margin-left: 38px;">
                                       <label for="">Quận/Huyện </label> <select name="" id="">
                                       <option value="">Châu Thành</option>
                                   </select>
                                   </div>
                                   <div class="selectop" style="margin-left: 38px;">
                                       <label for="">Phường/Xã</label><select name="" id="">
                                       <option value="">An Hiệp</option>
                                   </select>
                                   </div>
                               </div>

                           </div>

                           <div class="row">
                               <div class="col-lg-6">
                                   <div class="checkout__input">
                                       <p>Số điện thoại<span>*</span></p>
                                       <input type="text">
                                   </div>
                               </div>
                               <div class="col-lg-6">
                                   <div class="checkout__input">
                                       <p>Email<span>*</span></p>
                                       <input type="text">
                                   </div>
                               </div>
                           </div>



                           <div class="checkout__input">
                               <p>Ghi chú đơn hàng<span>*</span></p>
                               <input type="text"
                                      placeholder="Ghi chú chi tiết.">
                           </div>
                       </div>
                       <div class="col-lg-4 col-md-6">
                           <div class="checkout__order">
                               <h4>Đơn đặt hàng</h4>
                               <div class="checkout__order__products">Sản Phẩm <span>Tổng giá</span></div>
                               <ul>
                                   <li>Vegetable’s Package <span>$75.99</span></li>
                                   <li>Fresh Vegetable <span>$151.99</span></li>
                                   <li>Organic Bananas <span>$53.99</span></li>
                               </ul>
                               <div class="checkout__order__subtotal">Tạm tính <span>999.000 VND</span></div>
                               <div class="checkout__order__total">Total <span>999.000 VND</span></div>

                               <div class="">
                                   <a href="./shoping-cart.html"><p>Giỏ hàng</p></a>
                               </div>
                               <button type="submit" class="site-btn">Đặt Hàng</button>
                           </div>
                       </div>
                   </div>
               </form>
           </div>
       </div>
   </section>
   <!-- Checkout Section End -->

   <!-- Footer Section Begin -->
    <%@include file="footer.jsp"%>
    <!-- Footer Section End -->

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