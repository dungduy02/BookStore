<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-eq uiv="X-UA-Compatible" content="ie=edge">
    <link
            rel="stylesheet"
            href="https://unpkg.com/swiper/swiper-bundle.min.css"
    />


</head>

<body >

<!-- Hero Section End -->
<!-- Begin banner top -->
<section class="container ">
    <div class=" banner_top row set-bg" data-setbg="<c:url value="/template/web/img/banner/bg1.png"/>">
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
<div class="silder" id="mySlider">

        <div class="container d-flex" >

            <c:forEach items="${slider}" var="slid">
            <div class="row">
                <img src="${slid.img}" alt="">
                <h5>${slid.name}</h5>
            </div>
            </c:forEach>

        </div>



</div>

<!-- Featured Section Begin -->
<section class="featured spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <h2>NỔI BẬT</h2>
                </div>

            </div>
        </div>
        <div class="row featured__filter" id="content">
                        <c:forEach items="${list}" var="pro">
                        <div class="loadp col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                            <div class="featured__item">
                                <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-1.jpg">
                                    <img src="${pro.img}">
                                    <ul class="featured__item__pic__hover">
                                        <li><a href="#"><i class="fa fa-heart" style="margin: 10px"></i></a></li>
                                        <li><a href="#"><i class="fa fa-retweet" style="margin: 10px;"></i></a></li>
                                        <li><a href="add-to-cart?bid=${pro.id}muasp&txtmasp=${pro.id}"><i class="fa fa-shopping-cart" style="margin: 10px"></i></a></li>
                                    </ul>
                                </div>
                                <div class="featured__item__text">
                                    <h6><a href="DetailsController?pid=${pro.id}">${pro.name}</a></h6>
                                    <h5>${pro.price} VND</h5>
                                </div>
                            </div>

                        </div>

                        </c:forEach>






        </div>
        <div class="d-flex justify-content-center">
            <button class="btn btn-primary" onclick="loadMore()">
                Load More
            </button>
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
                    <img src="../../img/banner/banner-1.jpg" alt="">
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="banner__pic">
                    <img src="../../img/banner/banner-2.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
</div>

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
                    <c:forEach items="${ListNew}" var="news" begin="1" end="6">
                    <div class="new">

                        <div class="n">
                            <a href="DetailsController?pid=${news.id}" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="${news.img}" alt="">
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>${news.name}</h6>
                                    <span>${news.price} VND</span>
                                </div>
                            </a>


                        </div>

                    </div>
                    </c:forEach>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="latest-product__text">
                    <h4>Giảm Giá</h4>
                    <c:forEach items="${listSale}" var="sale">
                    <div class="sale">

                        <div class="sl">
                            <a href="DetailsController?pid=${sale.id}" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="${sale.img}" alt="">
                                </div>
                                <div class="discount__precent">-15%</div>
                                <div class="latest-product__item__text">
                                    <h6>${sale.name}</h6>
                                    <span class="discount">79.200 VND</span>
                                    <span>${sale.price} VND</span>
                                </div>
                            </a>
                        </div>

                    </div></c:forEach>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="latest-product__text">
                    <h4>Dành cho bạn</h4>
                    <div class="latest-product__slider owl-carousel">
                        <div class="latest-prdouct__slider__item">
                            <a href="./shop-details.html" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="../../img/latest-product/lp-4.jpg" alt="">
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Thay Đổi Cuộc Sống Với Nhân Số Học</h6>
                                    <span>110.400 VND</span>
                                </div>
                            </a>
                            <a href="./shop-details.html" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="../../img/latest-product/lp-5.jpg" alt="">
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Hiểu Về Trái Tim</h6>
                                    <span>68.000 VND</span>
                                </div>
                            </a>
                            <a href="./shop-details.html" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="../../img/latest-product/lp-6.jpg" alt="">
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
                                    <img src="../../img/latest-product/lp-7.jpg" alt="">
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Rèn Luyện Tư Duy Phản Biện</h6>
                                    <span>79.200 VND</span>
                                </div>
                            </a>
                            <a href="./shop-details.html" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="../../img/latest-product/lp-8.jpg" alt="">
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Kiếp Nào Ta Cũng Tìm Thấy Nhau y</h6>
                                    <span>148.800 VND</span>
                                </div>
                            </a>
                            <a href="./shop-details.html" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="../../img/latest-product/lp-9.jpg" alt="">
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
                        <img src="../../img/blog/blog-1.jpg" alt="">
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
                        <img src="../../img/blog/blog-2.jpg" alt="">
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
                        <img src="../../img/blog/blog-3.jpg" alt="">
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
    <script>
        function loadMore(){
            var amount = document.getElementsByClassName("loadp").length;
                $.ajax({
                    url: "/BookStore/load",
                    type: "get", //send it through get method
                    data:{
                        exits: amount
                    },
                    success: function(data) {


                        var row = document.getElementById("content");
                        row.innerHTML += data;
                    },
                    error: function(xhr) {
                        //Do Something to handle error
                    }
                });


        }
    </script>


</body>
</html>
