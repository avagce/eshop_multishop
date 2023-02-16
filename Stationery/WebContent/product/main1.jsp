<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html lang="ko">
<title>Welcome GKYK mall</title>
   <!-- <script src="${context}/js/jquery-2.2.4.min.js"></script>
    <script src="${context}/js/jquery.cookie.js"></script>
    <script>
        $(function(){
            if($.cookie('popup') == 'none'){
                $("#cookie").hide();
            }
            var $expiresChk = $("#expiresChk");
            $(".closeBtn").on("click", closePop );
            function closePop(){
                if($expiresChk.is(":checked")){
                    $.cookie("popup","none",{expires:3, path:"/"});
                }
                $("#cookie").fadeOut("fast");
            }
        });
    </script>
     --> 
<style>
#cookie{
	width: 700px;
	height: 500px;
	position: absolute;
	z-index: 99999;
	top: 50px;
	left: 50px;
}
#cookie img{
	width: 100%;
	height: 100%;
}
.closeWrap{
	text-align: right;
	background: #000;
	vertical-align: middle;
	color: #fff;
	font-weight: bold;
	padding-right: 10px;
}
.closeWrap input{
	vertical-align: middle;
}
</style>

<%@ include file="../common/header_userc.jsp" %>
<!-- 
  <div id="cookie">
        <img src="${context}/img/cookieImg.jpg" alt="공지사항이미지" width="300px" height="300px"> 
        <p class="closeWrap">
            <input type="checkbox" name="expiresChk" id="expiresChk">
            <label for="expiresChk">3일 동안 이 창 열지 않기</label>
            <button class="closeBtn">닫기</button>
        </p>
    </div>
     -->
		
<c:set var="loginUrl">${context}/user/login.jsp</c:set>
    <!-- Carousel Start -->
    <div class="container-fluid mb-3">
        <div class="row px-xl-5">
            <div class="col-lg-8">
                <div id="header-carousel" class="carousel slide carousel-fade mb-30 mb-lg-0" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#header-carousel" data-slide-to="0" class="active"></li>
                        <li data-target="#header-carousel" data-slide-to="1"></li>
                        <li data-target="#header-carousel" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item position-relative active" style="height: 430px;">
                            <img class="position-absolute w-100 h-100" src="/img//carousel-1.jpg" style="object-fit: cover;">
                            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                <div class="p-3" style="max-width: 700px;">
                                    <h1 class="display-4 text-white mb-3 animate__animated animate__fadeInDown">Men Fashion</h1>
                                    <p class="mx-md-5 px-5 animate__animated animate__bounceIn">Lorem rebum magna amet lorem magna erat diam stet. Sadips duo stet amet amet ndiam elitr ipsum diam</p>
                                    <a class="btn btn-outline-light py-2 px-4 mt-3 animate__animated animate__fadeInUp" href="#">Shop Now</a>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item position-relative" style="height: 430px;">
                            <img class="position-absolute w-100 h-100" src="/img//carousel-2.jpg" style="object-fit: cover;">
                            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                <div class="p-3" style="max-width: 700px;">
                                    <h1 class="display-4 text-white mb-3 animate__animated animate__fadeInDown">Women Fashion</h1>
                                    <p class="mx-md-5 px-5 animate__animated animate__bounceIn">Lorem rebum magna amet lorem magna erat diam stet. Sadips duo stet amet amet ndiam elitr ipsum diam</p>
                                    <a class="btn btn-outline-light py-2 px-4 mt-3 animate__animated animate__fadeInUp" href="#">Shop Now</a>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item position-relative" style="height: 430px;">
                            <img class="position-absolute w-100 h-100" src="/img//carousel-3.jpg" style="object-fit: cover;">
                            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                <div class="p-3" style="max-width: 700px;">
                                    <h1 class="display-4 text-white mb-3 animate__animated animate__fadeInDown">Kids Fashion</h1>
                                    <p class="mx-md-5 px-5 animate__animated animate__bounceIn">Lorem rebum magna amet lorem magna erat diam stet. Sadips duo stet amet amet ndiam elitr ipsum diam</p>
                                    <a class="btn btn-outline-light py-2 px-4 mt-3 animate__animated animate__fadeInUp" href="#">Shop Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="product-offer mb-30" style="height: 200px;">
                    <img class="img-fluid" src="/img//offer-1.jpg" alt="">
                    <div class="offer-text">
                        <h6 class="text-white text-uppercase">Save 20%</h6>
                        <h3 class="text-white mb-3">Special Offer</h3>
                        <a href="" class="btn btn-secondary">Shop Now</a>
                    </div>
                </div>
                <div class="product-offer mb-30" style="height: 200px;">
                    <img class="img-fluid" src="/img//offer-2.jpg" alt="">
                    <div class="offer-text">
                        <h6 class="text-white text-uppercase">Save 20%</h6>
                        <h3 class="text-white mb-3">Special Offer</h3>
                        <a href="" class="btn btn-secondary">Shop Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Carousel End -->


    <!-- Featured Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5 pb-3">
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                    <h1 class="fa fa-check text-gray-dark m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">Quality Product</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                    <h1 class="fa fa-shipping-fast text-gray-dark m-0 mr-2"></h1>
                    <h5 class="font-weight-semi-bold m-0">Free Shipping</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                    <h1 class="fas fa-exchange-alt text-gray-dark m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">14-Day Return</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                    <h1 class="fa fa-phone-volume text-gray-dark m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">24/7 Support</h5>
                </div>
            </div>
        </div>
    </div>
    <!-- Featured End -->

    <!-- Products Start -->
    <div class="container-fluid pt-5 pb-3">
        <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="pr-3">Shirts Products</span></h2>
        <div class="row px-xl-5">
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden" onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${context}/work/product/retrieveProductList.do?category=${dsProductList[6].PRODUCT_CATEGORY_CD}')">
                        <img class="img-fluid w-100" src="${context}/shirtsImg/${dsShirtsList[0].PRODUCT_IMAGE}" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">${dsShirtsList[0].PRODUCT_NAME }</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>￦${dsShirtsList[0].PRODUCT_UNIT_PRICE }</h5><h6 class="text-muted ml-2"><del>￦${dsShirtsList[0].PRODUCT_UNIT_PRICE }</del></h6>
                        </div>
                        <div class="d-flex align-items-center justify-content-center mb-1">
                            <small class="fa fa-star text-gray-dark mr-1"></small>
                            <small class="fa fa-star text-gray-dark mr-1"></small>
                            <small class="fa fa-star text-gray-dark mr-1"></small>
                            <small class="fa fa-star text-gray-dark mr-1"></small>
                            <small class="fa fa-star text-gray-dark mr-1"></small>
                            <small>(99)</small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden" onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${context}/work/product/retrieveProductList.do?category=${dsProductList[6].PRODUCT_CATEGORY_CD}')">
                        <img class="img-fluid w-100" src="${context}/shirtsImg/${dsShirtsList[1].PRODUCT_IMAGE}" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">${dsShirtsList[1].PRODUCT_NAME }</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>￦${dsShirtsList[1].PRODUCT_UNIT_PRICE }</h5><h6 class="text-muted ml-2"><del>￦${dsShirtsList[1].PRODUCT_UNIT_PRICE }</del></h6>
                        </div>
                        <div class="d-flex align-items-center justify-content-center mb-1">
                            <small class="fa fa-star text-gray-dark mr-1"></small>
                            <small class="fa fa-star text-gray-dark mr-1"></small>
                            <small class="fa fa-star text-gray-dark mr-1"></small>
                            <small class="fa fa-star text-gray-dark mr-1"></small>
                            <small class="fa fa-star-half-alt text-gray-dark mr-1"></small>
                            <small>(99)</small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden" onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${context}/work/product/retrieveProductList.do?category=${dsProductList[6].PRODUCT_CATEGORY_CD}')">
                        <img class="img-fluid w-100" src="${context}/shirtsImg/${dsShirtsList[4].PRODUCT_IMAGE}" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">${dsShirtsList[4].PRODUCT_NAME }</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>￦${dsShirtsList[4].PRODUCT_UNIT_PRICE }</h5><h6 class="text-muted ml-2"><del>￦${dsShirtsList[4].PRODUCT_UNIT_PRICE }</del></h6>
                        </div>
                        <div class="d-flex align-items-center justify-content-center mb-1">
                            <small class="fa fa-star text-gray-dark mr-1"></small>
                            <small class="fa fa-star text-gray-dark mr-1"></small>
                            <small class="fa fa-star text-gray-dark mr-1"></small>
                            <small class="fa fa-star-half-alt text-gray-dark mr-1"></small>
                            <small class="far fa-star text-gray-dark mr-1"></small>
                            <small>(99)</small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden" onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${context}/work/product/retrieveProductList.do?category=${dsProductList[6].PRODUCT_CATEGORY_CD}')">
                        <img class="img-fluid w-100" src="${context}/shirtsImg/${dsShirtsList[5].PRODUCT_IMAGE}" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">${dsShirtsList[5].PRODUCT_NAME }</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>￦${dsShirtsList[5].PRODUCT_UNIT_PRICE }</h5><h6 class="text-muted ml-2"><del>￦${dsShirtsList[5].PRODUCT_UNIT_PRICE }</del></h6>
                        </div>
                        <div class="d-flex align-items-center justify-content-center mb-1">
                            <small class="fa fa-star text-gray-dark mr-1"></small>
                            <small class="fa fa-star text-gray-dark mr-1"></small>
                            <small class="fa fa-star text-gray-dark mr-1"></small>
                            <small class="far fa-star text-gray-dark mr-1"></small>
                            <small class="far fa-star text-gray-dark mr-1"></small>
                            <small>(99)</small>
                        </div>
                    </div>
                </div>
            </div>
        </div>	
    </div>
     <div class="container-fluid pt-5 pb-3">
        <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="pr-3">Dress Products</span></h2>
        <div class="row px-xl-5">
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden" onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${context}/work/product/retrieveProductList.do?category=${dsProductList[5].PRODUCT_CATEGORY_CD}')">
                        <img class="img-fluid w-100" src="${context}/dressImg/${dsDressList[0].PRODUCT_IMAGE}" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">${dsDressList[0].PRODUCT_NAME }</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>￦${dsDressList[0].PRODUCT_UNIT_PRICE }</h5><h6 class="text-muted ml-2"><del>￦${dsDressList[0].PRODUCT_UNIT_PRICE }</del></h6>
                        </div>
                        <div class="d-flex align-items-center justify-content-center mb-1">
                            <small class="fa fa-star text-gray-dark mr-1"></small>
                            <small class="fa fa-star text-gray-dark mr-1"></small>
                            <small class="fa fa-star text-gray-dark mr-1"></small>
                            <small class="fa fa-star text-gray-dark mr-1"></small>
                            <small class="fa fa-star text-gray-dark mr-1"></small>
                            <small>(99)</small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden" onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${context}/work/product/retrieveProductList.do?category=${dsProductList[5].PRODUCT_CATEGORY_CD}')">
                        <img class="img-fluid w-100" src="${context}/dressImg/${dsDressList[1].PRODUCT_IMAGE}" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">${dsDressList[1].PRODUCT_NAME }</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>￦${dsDressList[1].PRODUCT_UNIT_PRICE }</h5><h6 class="text-muted ml-2"><del>￦${dsDressList[1].PRODUCT_UNIT_PRICE }</del></h6>
                        </div>
                        <div class="d-flex align-items-center justify-content-center mb-1">
                            <small class="fa fa-star text-gray-dark mr-1"></small>
                            <small class="fa fa-star text-gray-dark mr-1"></small>
                            <small class="fa fa-star text-gray-dark mr-1"></small>
                            <small class="fa fa-star text-gray-dark mr-1"></small>
                            <small class="fa fa-star-half-alt text-gray-dark mr-1"></small>
                            <small>(99)</small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden" onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${context}/work/product/retrieveProductList.do?category=${dsProductList[5].PRODUCT_CATEGORY_CD}')">
                        <img class="img-fluid w-100" src="${context}/dressImg/${dsDressList[2].PRODUCT_IMAGE}" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">${dsDressList[2].PRODUCT_NAME }</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>￦${dsDressList[2].PRODUCT_UNIT_PRICE }</h5><h6 class="text-muted ml-2"><del>￦${dsDressList[2].PRODUCT_UNIT_PRICE }</del></h6>
                        </div>
                        <div class="d-flex align-items-center justify-content-center mb-1">
                            <small class="fa fa-star text-gray-dark mr-1"></small>
                            <small class="fa fa-star text-gray-dark mr-1"></small>
                            <small class="fa fa-star text-gray-dark mr-1"></small>
                            <small class="fa fa-star-half-alt text-gray-dark mr-1"></small>
                            <small class="far fa-star text-gray-dark mr-1"></small>
                            <small>(99)</small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden" onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${context}/work/product/retrieveProductList.do?category=${dsProductList[5].PRODUCT_CATEGORY_CD}')">
                        <img class="img-fluid w-100" src="${context}/dressImg/${dsDressList[3].PRODUCT_IMAGE}" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">${dsDressList[3].PRODUCT_NAME }</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>￦${dsDressList[3].PRODUCT_UNIT_PRICE }</h5><h6 class="text-muted ml-2"><del>￦${dsDressList[3].PRODUCT_UNIT_PRICE }</del></h6>
                        </div>
                        <div class="d-flex align-items-center justify-content-center mb-1">
                            <small class="fa fa-star text-gray-dark mr-1"></small>
                            <small class="fa fa-star text-gray-dark mr-1"></small>
                            <small class="fa fa-star text-gray-dark mr-1"></small>
                            <small class="far fa-star text-gray-dark mr-1"></small>
                            <small class="far fa-star text-gray-dark mr-1"></small>
                            <small>(99)</small>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       </div>
    <!-- Products End -->


    <!-- Offer Start -->
    <div class="container-fluid pt-5 pb-3">
        <div class="row px-xl-5">
            <div class="col-md-6">
                <div class="product-offer mb-30" style="height: 300px;">
                    <img class="img-fluid" src="/img//offer-1.jpg" alt="">
                    <div class="offer-text">
                        <h6 class="text-white text-uppercase">Save 20%</h6>
                        <h3 class="text-white mb-3">Special Offer</h3>
                        <a href="" class="btn btn-gray-dark">Shop Now</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="product-offer mb-30" style="height: 300px;">
                    <img class="img-fluid" src="/img//offer-2.jpg" alt="">
                    <div class="offer-text">
                        <h6 class="text-white text-uppercase">Save 20%</h6>
                        <h3 class="text-white mb-3">Special Offer</h3>
                        <a href="" class="btn btn-gray-dark">Shop Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Offer End -->

    <!-- Vendor Start -->
    <div class="container-fluid py-5">
        <div class="row px-xl-5">
            <div class="col">
                <div class="owl-carousel vendor-carousel">
                    <div class="bg-light p-4">
                        <img src="/img//vendor-1.jpg" alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="/img//vendor-2.jpg" alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="/img//vendor-3.jpg" alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="/img//vendor-4.jpg" alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="/img//vendor-5.jpg" alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="/img//vendor-6.jpg" alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="/img//vendor-7.jpg" alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="/img//vendor-8.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Vendor End -->
    
  
<%@ include file="../common/footer.jsp"%>