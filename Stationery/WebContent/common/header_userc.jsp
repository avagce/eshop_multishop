<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var ="context"><%=request.getContextPath()%></c:set>
<head>
<style type="text/css">
	a{cursor: pointer;}
</style>
    <meta charset="utf-8">
    <title>MultiShop - Online Shop Website Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="${context}/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">  

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="${context}/lib/animate/animate.min.css" rel="stylesheet">
    <link href="${context}/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${context}/css/style.css" rel="stylesheet">
  	<link href="${context}/css/bootstrap.min.css" rel="stylesheet">
    
   <!--   <script src="${context}/js/jquery.js"></script>-->
    
    <!-- <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>-->
	<script src="${context}/js/jquery-1.9.1.js"></script>
	<script src="${context}/js/jquery.form.js"></script>
    <script src="${context}/js/common.js"></script>
    
    
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="${context}/lib/easing/easing.min.js"></script>
    <script src="${context}/lib/owlcarousel/owl.carousel.min.js"></script>
    
    <!-- Contact Javascript File -->
    <script src="${context}/mail/jqBootstrapValidation.min.js"></script>
    <script src="${context}/mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <script src="${context}/js/main.js"></script>
   </script>
<!-- Channel Plugin Scripts -->
<script>
   (function() {
      var w = window;
      if (w.ChannelIO) {
         return (window.console.error || window.console.log || function() {
         })('ChannelIO script included twice.');
      }
      var ch = function() {
         ch.c(arguments);
      };
      ch.q = [];
      ch.c = function(args) {
         ch.q.push(args);
      };
      w.ChannelIO = ch;
      function l() {
         if (w.ChannelIOInitialized) {
            return;
         }
         w.ChannelIOInitialized = true;
         var s = document.createElement('script');
         s.type = 'text/javascript';
         s.async = true;
         s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
         s.charset = 'UTF-8';
         var x = document.getElementsByTagName('script')[0];
         x.parentNode.insertBefore(s, x);
      }
      if (document.readyState === 'complete') {
         l();
      } else if (window.attachEvent) {
         window.attachEvent('onload', l);
      } else {
         window.addEventListener('DOMContentLoaded', l, false);
         window.addEventListener('load', l, false);
      }
   })();
   ChannelIO('boot', {
      "pluginKey" : "634ebfd4-9412-4ee3-89a8-ca5bac58fa25"
   });
</script>
<!-- End Channel Plugin -->
</head>
 

	

<c:set var="loginUrl">${context}/user/login.jsp</c:set>
<c:set var="gomain">${context}/work/product/goMain.do</c:set>
<c:set var="officeUrl">${context}/work/product/retrieveProductList.do?category=${dsProductList[0].PRODUCT_CATEGORY_CD}</c:set>

<body>
    <!-- Topbar Start -->
    <div class="container-fluid">
        <div class="row py-1 px-xl-5">
            <div class="col-lg-6 d-none d-lg-block">
                <div class="d-inline-flex align-items-center h-100">
                 <a class="text-body mr-3" onclick="location.href='${context}/about/introduction.jsp'" style="cursor: pointer;">About</a>
                    <!-- 메뉴를 누를때마다 user 의 등급과 로긴체크,로긴 됐을때 어디로 이동할지를 넣어준다 -->
                 <a class="text-body mr-3" onclick="location.href='${context}/location/location.jsp'" style="cursor: pointer;">location</a>
                    
                    <a class="text-body mr-3" href="">Help</a>
                    <a class="text-body mr-3" onclick="location.href='${context}/faq/faq.jsp'" style="cursor: pointer;">FAQ</a>
                    <button type="button" class="btn btn-sm btn-light dropdown-toggle text-body mr-3" data-toggle="dropdown"><strong>NOTICE</strong></button>
                  	<div class="dropdown-menu dropdown-menu-right">
	                    <a class="text-body mr-3 dropdown-item" onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${context}/work/board/retrieveBoardList.do')">공지사항</a>
	                    <a class="text-body mr-3 dropdown-item" onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${context}/work/board/retrieveBoardList2.do')">자유게시판</a>
	                    <a class="text-body mr-3 dropdown-item" onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${context}/work/board/retrieveBoardList3.do')">커뮤니티게시판</a>
	                    <a class="text-body mr-3 dropdown-item" onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${context}/work/board/retrieveBoardList4.do')">상담신청게시판</a>
                   	</div>
                </div>
            </div>
            <div class="col-lg-6 text-center text-lg-right">
                 <div class="d-inline-flex align-items-center">
                    <div class="btn-group">
                        <c:if test="${sessionScope.id == null}">
                            <button class="btn btn-default" type="button" onclick="location.href='${context}/user/login.jsp'"><strong>LOGIN</strong></button>
                            <button class="btn btn-default" type="button" onclick="location.href='${context}/work/user/createUser.do'"><strong>Sign up</strong></button>
                       </c:if>
                        <c:if test="${sessionScope.id != null}">
                            <button class="btn btn-default" type="button" onclick="location.href='${context}/work/user/updateUser.do'"><strong>정보수정</strong></button>
                            <button class="btn btn-default" type="button" onclick="location.href='${context}/work/user/logout.do'"><strong>LOGOUT</strong></button>
                            <button class="btn btn-default" type="button" onclick="location.href='${context}/work/cart/retrieveCartList.do'"><strong>장바구니</strong></button>
                            <button class="btn btn-default" type="button" onclick="location.href='${context}/work/sell/retrieveBuyList.do'"><strong>구입목록</strong></button>
                       </c:if>
                       <c:if test="${sessionScope.id != null && sessionScope.grade == 'A'}">
	                     <button class="btn btn-default" type="button" onclick="location.href='${context}/work/product/retrieveProductListForManage.do'"><strong>재고관리</strong></button>
	                     <button class="btn btn-default" type="button" onclick="location.href='${context}/work/sell/retrieveStatisticsForProduct.do'"><strong>매출통계</strong></button>
	                     <button class="btn btn-default" type="button" onclick="location.href='${context}/work/product/retrieveStatisticsForStock.do?productCategoryCd=P'"><strong>재고현황</strong></button>
	                  </c:if>
                    </div>
                </div>
                <div class="d-inline-flex align-items-center d-block d-lg-none">
                    <a href="" class="btn px-0 ml-2">
                        <i class="fas fa-heart text-dark"></i>
                        <span class="badge text-dark border border-dark rounded-circle" style="padding-bottom: 2px;">0</span>
                    </a>
                    <a href="" class="btn px-0 ml-2">
                        <i class="fas fa-shopping-cart text-dark"></i>
                        <span class="badge text-dark border border-dark rounded-circle" style="padding-bottom: 2px;">0</span>
                    </a>
                </div>
            </div>
        </div>
        <div class="row align-items-center bg-light py-3 px-xl-5 d-none d-lg-flex">
            <div class="col-lg-4">
                <a href="${gomain}" class="text-decoration-none">
                    <img alt="로고 이미지" src="${context}/img/GKYK_logo2.png" style="width: 160px">
                </a>
            </div>
            <div class="col-lg-4 col-6 text-left">
                <form action="">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search for products">
                        <div class="input-group-append">
                            <span class="input-group-text bg-transparent ">
                                <i class="fa fa-search"></i>
                            </span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-lg-4 col-6 text-right">
                <p class="m-0">Customer Service</p>
                <h5 class="m-0">+012 345 6789</h5>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <div class="container-fluid bg-dark mb-30">
        <div class="row px-xl-5">
            <div class="col-lg-3 d-none d-lg-block">
                <a class="btn d-flex align-items-center justify-content-between bg-white w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; padding: 0 30px;">
                    <h6 class="text-dark m-0"><i class="fa fa-bars mr-2"></i>Categories</h6>
                    <i class="fa fa-angle-down text-dark"></i>
                </a>
                <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 bg-light" id="navbar-vertical" style="width: calc(100% - 30px); z-index: 999;">
                    <div class="navbar-nav w-100">
                        <div class="nav-item dropdown dropright">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Dresses <i class="fa fa-angle-right float-right mt-1"></i></a>
                            <div class="dropdown-menu position-absolute rounded-0 border-0 m-0">
                                <a href="" class="dropdown-item">Men's Dresses</a>
                                <a href="" class="dropdown-item">Women's Dresses</a>
                                <a href="" class="dropdown-item">Baby's Dresses</a>
                            </div>
                        </div>
                        <a onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${context}/work/product/retrieveProductList.do?category=${dsProductList[0].PRODUCT_CATEGORY_CD}')" class="nav-item nav-link">office</a>
                  <a onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${context}/work/product/retrieveProductList.do?category=${dsProductList[1].PRODUCT_CATEGORY_CD}')" class="nav-item nav-link">Pen</a> 
                  <a onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${context}/work/product/retrieveProductList.do?category=${dsProductList[2].PRODUCT_CATEGORY_CD}')" class="nav-item nav-link">Binder</a> 
                  <a onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${context}/work/product/retrieveProductList.do?category=${dsProductList[3].PRODUCT_CATEGORY_CD}')" class="nav-item nav-link">Design</a>
                  <a onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${context}/work/product/retrieveProductList.do?category=${dsProductList[4].PRODUCT_CATEGORY_CD}')" class="nav-item nav-link">Storage</a>
                  <a onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${context}/work/product/retrieveProductList.do?category=${dsProductList[5].PRODUCT_CATEGORY_CD}')" class="nav-item nav-link">Dress</a>
                  <a onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${context}/work/product/retrieveProductList.do?category=${dsProductList[6].PRODUCT_CATEGORY_CD}')" class="nav-item nav-link">Shirts</a>
                    </div>
                </nav>
            </div>
            <div class="col-lg-9">
                <nav class="navbar navbar-expand-lg bg-dark navbar-dark py-3 py-lg-0 px-0">
                    <a href="${gomain}" class="text-decoration-none d-block d-lg-none">
                        <img alt="로고 이미지" src="${context}/img/GKYK_logo2.png" style="width: 160px">
                    </a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="navbar-nav mr-auto py-0">
                            <a href="index.html" class="nav-item nav-link">Home</a>
                            <a href="shop.html" class="nav-item nav-link">Shop</a>
                            <a href="detail.html" class="nav-item nav-link">Shop Detail</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages <i class="fa fa-angle-down mt-1"></i></a>
                                <div class="dropdown-menu bg-gray-dark rounded-0 border-0 m-0">
                                    <a href="cart.html" class="dropdown-item">Shopping Cart</a>
                                    <a href="checkout.html" class="dropdown-item">Checkout</a>
                                </div>
                            </div>
                            <a href="contact.html" class="nav-item nav-link">Contact</a>
                        </div>
                        <div class="navbar-nav ml-auto py-0 d-none d-lg-block">
                            <a href="" class="btn px-0">
                                <i class="fas fa-heart text-gray-dark"></i>
                                <span class="badge text-secondary border border-secondary rounded-circle" style="padding-bottom: 2px;">0</span>
                            </a>
                            <a href="" class="btn px-0 ml-3">
                                <i class="fas fa-shopping-cart text-gray-dark"></i>
                                <span class="badge text-secondary border border-secondary rounded-circle" style="padding-bottom: 2px;">0</span>
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>
    <!-- Navbar End -->
