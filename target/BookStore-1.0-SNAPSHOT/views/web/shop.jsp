<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>

    <title>BOOKSTORE NLU | Sản phẩm</title>
    <link href="<c:url value='/template/web/css/style-price.css' />" rel="stylesheet" type="text/css" media="all">
</head>
<style>

</style>
<body>



<%--<section class="breadcrumb-section set-bg" data-setbg="<c:url value="/template/web/img/breadcrumb.jpg"/>">--%>
<%--    <div class="container">--%>
<%--        <div class="row">--%>
<%--            <div class="col-lg-12 text-center">--%>
<%--                <div class="breadcrumb__text">--%>
<%--                    <h2>Sản phẩm</h2>--%>
<%--                    <div class="breadcrumb__option">--%>
<%--                        <a href="./index.html">Home</a>--%>
<%--                        <span>Sản phẩm</span>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>

<!-- Breadcrumb Section End -->

<!-- Product Section Begin -->
<section class="product spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-5">
                <div class="sidebar">
                    <div class="sidebar__item">
                        <h4>Giá</h4>
                        <div class="price-range-wrap">

                            <select id="filter-price" name="filter" onchange="changeFilterPrice()">
                                <option value="small"> Từ 0 VND đến 50000 VND</option>
                                <option value="medium">Từ 50000 VND đến 100000 VND</option>
                                <option value="large">Từ 100000 trở lên</option>

                            </select>
                        </div>

                    </div>
                    <div class="sidebar__item sidebar__item__color--option">
                        <h4>Nhà Cung Cấp</h4>
                        <ul>
                            <c:forEach items="${listPu}" var="pu">
                                <li><a href="publisher?pid=${pu.id}"> ${pu.publishername}</a></li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="latest-product__text">
                        <h4>Sản Phẩm Mới Nhất</h4>
                        <div class="last">
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="${lastP.img}" alt="">
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>${lastP.name}</h6>
                                    <span>${lastP.price} VND</span>
                                </div>
                            </a>

                    <div class="sidebar__item">
                        <div class="latest-product__text">
                            <h4>Sản Phẩm Mới Nhất</h4>
                            <div class="last">



                                    <a href="DetailsController?pid=${lastP.id}" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="${lastP.img}" alt="">
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6>${lastP.name}</h6>
                                            <span>${lastP.price} VND</span>
                                        </div>
                                    </a>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-9 col-md-7" id="main-view">

            <div class="col-lg-8 col-md-7">
                <div class="filter__item">
                    <div class="row">
                        <div class="col-lg-4 col-md-5">
                            <div class="filter__sort">

                                <span>Sắp xếp</span>
                                <select name="select" id="sort" onchange="SortbyFilter()">
                                    <option value="new" name="new">Mới Nhất</option>
                                    <option value="price" name="price">Giá Cả</option>
                                </select>

                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4">
                            <div class="filter__found">
                                <h6><span id="count-product">0</span> Sản phẩm đã được tìm thấy</h6>
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

                <div class="row" id="content">

                    <c:forEach items="${Page}" var="pag">
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="${pag.img}">
                                <img src="${pag.img}" alt="" style="cursor: pointer">
                                <ul class="product__item__pic__hover">

                                    <li><a href="favourite?pid=${pag.id}"><i class="fa fa-heart" style="margin: 10px"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet" style="margin: 10px"></i></a></li>
                                    <li><a href="cart?action=add&id=${pag.id}"><i class="fa fa-shopping-cart" style="margin: 10px"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="DetailsController?pid=${pag.id}">${pag.name}</a></h6>
                                <h5>${pag.price} VND</h5>

                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <div class="row" style="margin: 0 auto">

            <c:forEach begin="${1}" end="${requestScope.num}" var="i">
                <div class="product__pagination mr-3" >
                    <a href="page?page=${i}" id="paging">${i}</a>
                </div></c:forEach></div>


        </div>
    </div>
</section>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<script>
   function changeFilterPrice(){

       let select = document.getElementById("filter-price");
       let content = document.getElementById("content");
       let page = document.getElementById("paging");
       document.getElementById("main-view").scrollIntoView();
       if(document.getElementById("loading") == null){
           content.innerHTML = '<p id="loading">Loading...</p>';
           $.ajax({
               url: "/BookStore/price",
               type: "get", //send it through get method
               data: {
                   type: select.value
               },
               success: function(data) {
                   content.innerHTML = data;

               },
               error: function(xhr) {
                   //Do Something to handle error
               }
           });
           $.ajax({
               url: "/BookStore/CountProduct",
               type: "get", //send it through get method
               data: {
                   type: select.value
               },
               success: function(data) {
                   document.getElementById("count-product").innerHTML = data;
                   console.log(data)
               },
               error: function(xhr) {
                   //Do Something to handle error
               }
           });

       }
   }
   function SortbyFilter(){
       let select = document.getElementById("sort");
       let content = document.getElementById("content");
       document.getElementById("main-view").scrollIntoView();
       if(document.getElementById("loading") == null){
           content.innerHTML = '<p id="loading">Loading...</p>';
           $.ajax({
               url: "/BookStore/SortProduct",
               type: "get", //send it through get method
               data: {
                   type: select.value
               },
               success: function(data) {
                   content.innerHTML = data;
               },
               error: function(xhr) {
                   //Do Something to handle error
               }
           });
           $.ajax({
               url: "/BookStore/CountProduct",
               type: "get", //send it through get method
               data: {
                   type: select.value
               },
               success: function(data) {
                   document.getElementById("count-product").innerHTML = data;
                   console.log(data)
               },
               error: function(xhr) {
                   //Do Something to handle error
               }
           });

       }
   }
</script>
<%--page--%>
<%--<section class="product spad">--%>
<%--    <div class="row" style="margin: 0 auto">--%>
<%--        <c:forEach begin="${1}" end="${requestScope.num}" var="i">--%>
<%--            <div class="product__pagination">--%>
<%--                <a href="shop?page=${i}">${i}</a>--%>
<%--            </div>--%>
<%--        </c:forEach></div>--%>

<%--    </div>--%>
<%--</section>--%>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<script>
    $(function () {

        // Initiate Slider
        $('#slider-range').slider({
            range: true,
            min: 10000,
            max: 110000,
            step: 100,
            values: [45000, 75000]
        });

        // Move the range wrapper into the generated divs
        $('.ui-slider-range').append($('.range-wrapper'));

        // Apply initial values to the range container
        $('.range').html('<span class="range-value"><sup>Đ</sup>' + $('#slider-range').slider("values", 0).toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,") + '</span><span class="range-divider"></span><span class="range-value"><sup>Đ</sup>' + $("#slider-range").slider("values", 1).toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,") + '</span>');

        // Show the gears on press of the handles
        $('.ui-slider-handle, .ui-slider-range').on('mousedown', function () {
            $('.gear-large').addClass('active');
        });

        // Hide the gears when the mouse is released
        // Done on document just incase the user hovers off of the handle
        $(document).on('mouseup', function () {
            if ($('.gear-large').hasClass('active')) {
                $('.gear-large').removeClass('active');
            }
        });

        // Rotate the gears
        var gearOneAngle = 0,
            gearTwoAngle = 0,
            rangeWidth = $('.ui-slider-range').css('width');

        $('.gear-one').css('transform', 'rotate(' + gearOneAngle + 'deg)');
        $('.gear-two').css('transform', 'rotate(' + gearTwoAngle + 'deg)');

        $('#slider-range').slider({
            slide: function (event, ui) {

                // Update the range container values upon sliding

                $('.range').html('<span class="range-value"><sup>$</sup>' + ui.values[0].toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,") + '</span><span class="range-divider"></span><span class="range-value"><sup>Đ</sup>' + ui.values[1].toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,") + '</span>');

                // Get old value
                var previousVal = parseInt($(this).data('value'));

                // Save new value
                $(this).data({
                    'value': parseInt(ui.value)
                });

                // Figure out which handle is being used
                if (ui.values[0] == ui.value) {

                    // Left handle
                    if (previousVal > parseInt(ui.value)) {
                        // value decreased
                        gearOneAngle -= 7;
                        $('.gear-one').css('transform', 'rotate(' + gearOneAngle + 'deg)');
                    } else {
                        // value increased
                        gearOneAngle += 7;
                        $('.gear-one').css('transform', 'rotate(' + gearOneAngle + 'deg)');
                    }

                } else {

                    // Right handle
                    if (previousVal > parseInt(ui.value)) {
                        // value decreased
                        gearOneAngle -= 7;
                        $('.gear-two').css('transform', 'rotate(' + gearOneAngle + 'deg)');
                    } else {
                        // value increased
                        gearOneAngle += 7;
                        $('.gear-two').css('transform', 'rotate(' + gearOneAngle + 'deg)');
                    }

                }

                if (ui.values[1] === 110000) {
                    if (!$('.range-alert').hasClass('active')) {
                        $('.range-alert').addClass('active');
                    }
                } else {
                    if ($('.range-alert').hasClass('active')) {
                        $('.range-alert').removeClass('active');
                    }
                }
            }
        });

        // Prevent the range container from moving the slider
        $('.range, .range-alert').on('mousedown', function (event) {
            event.stopPropagation();
        });

    });
</script>
<!-- Product Section End -->

</body>
</html>
