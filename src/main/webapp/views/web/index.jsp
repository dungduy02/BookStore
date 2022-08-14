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


</head>

<body>

<section>
    <div class="slider " >

        <div class="numberText" style="height: 200px;width: 100%">
            <img src="${slider.img}" style="width: 100%;height: 250px">
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
                    <h2>SẢN PHẨM</h2>
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
<%--                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>--%>
                                        <li><a href="DetailsController?pid=${pro.id}"><i class="fa fa-retweet"></i></a></li>
                                        <li><a href="add-to-cart?bid=${pro.id}"><i class="fa fa-shopping-cart"></i></a></li>
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
                    <c:forEach items="${ListNew}" var="news">
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
                    <h4>Giảm giá </h4>
                    <c:forEach items="${listSale}" var="sale" begin="1" end="6">
                    <div class="sale">

                        <div class="sl">
                            <a href="DetailsController?pid=${sale.id}" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="${sale.img}" alt="">
                                </div>
                                <div class="discount__precent">${sale2.percent}</div>
                                <div class="latest-product__item__text">
                                    <h6>${sale.name}</h6>
                                    <span class="discount">${sale.price} VND</span>
                                    <span>${sale.price - (sale2.priceSale * sale.price)}VND</span>
                                </div>
                            </a>
                        </div>

                    </div></c:forEach>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="latest-product__text">
                    <h4>Ngẫu nhiên</h4>
                    <c:forEach items="${rdPro}" var="rdPro">
                        <div class="new">

                            <div class="n">
                                <a href="DetailsController?pid=${rdPro.id}" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${rdPro.img}" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>${rdPro.name}</h6>
                                        <span>${rdPro.price} VND</span>
                                    </div>
                                </a>


                            </div>

                        </div>
                    </c:forEach>
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
            <c:forEach items="${listBlog}" var="blog" end="2">
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
                        <img src="${blog.image}" alt="" style="height: 350px">
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i> ${blog.dateCreate}</li>
                            <li><i class="fa fa-comment-o"></i> 5</li>
                        </ul>
                        <h5><a href="detailsBlog?blogId=${blog.id}">${blog.title}</a></h5>
                        <p>${blog.shortcut} </p>
                    </div>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>
</section>
<!-- Blog Section End -->
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
