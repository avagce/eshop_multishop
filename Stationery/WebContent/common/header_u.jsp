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
   <!--   <link href="${context}/img/favicon.ico" rel="icon"> -->

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
    
   <!--   <script src="${context}/js/jquery.js"></script>-->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    
    <script src="${context}/js/common.js"></script>
    
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="${context}/lib/easing/easing.min.js"></script>
    <script src="${context}/lib/owlcarousel/owl.carousel.min.js"></script>
    
    <!-- Contact Javascript File -->
    <script src="${context}/mail/jqBootstrapValidation.min.js"></script>
    <script src="${context}/mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="${context}/js/main.js"></script>
   
</head>
 

	

<c:set var="loginUrl">${context}/user/login.jsp</c:set>
<c:set var="gomain">${context}/work/product/goMain.do</c:set>
<c:set var="officeUrl">${context}/work/product/retrieveProductList.do?category=${dsProductList[0].PRODUCT_CATEGORY_CD}</c:set>

<body>
    <!-- Topbar Start -->
        <div class="row bg-secondary py-1 px-xl-5">
            <div class="col-lg-6 d-none d-lg-block">
                <div class="d-inline-flex align-items-center h-100">
                 <a class="text-body mr-3" onclick="location.href='${context}/user/login.jsp'" style="cursor: pointer;">About</a>
                    <!-- 메뉴를 누를때마다 user 의 등급과 로긴체크,로긴 됐을때 어디로 이동할지를 넣어준다 -->
                    <a class="text-body mr-3" href="">Contact</a>
                    <a class="text-body mr-3" href="">Help</a>
                    <a class="text-body mr-3" href="">FAQs</a>
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
            <div class="col-lg-3">
                <a href="${gomain}">
                    <img alt="로고 이미지" src="${context}/img/GKYK_logo2.png" style="width: 160px">
                </a>
            </div>
            <div class="col-lg-6 col-6">
                <form action="" class="d-flex search-box-all" role="search">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search for products">
                        <div class="input-group-append">
				          <button type="button" class="btn dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					            <span id="searchSelected">Intranet</span>
					            <span class="sr-only">Toggle Dropdown</span>
					            <div class="dropdown-menu">
						              <a class="dropdown-item intranet" href="">Intranet</a>
						              <a class="dropdown-item people-finder" href="">People Finder</a>
					            </div>
				          </button>
        			</div>
                        <div class="input-group-append">
                            <span class="input-group-text bg-transparent text-primary"  style="cursor: pointer;">
                                <i class="fa fa-search"></i>
                            </span>
                        </div>
                    </div>
                </form>
   			</div>
   			<div class="col-lg-1 dropdown">
			  <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			   <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
			  <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z"/>
			</svg>
			  <figcaption class=header-icon-text">
			    	마이페이지
			  </figcaption>
			  </a>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
             <c:if test="${sessionScope.id == null}">
                           <button class="btn btn-default dropdown-item" type="button" onclick="location.href='${context}/user/login.jsp'"><strong>LOGIN</strong></button>
                           <button class="btn btn-default dropdown-item" type="button" onclick="location.href='${context}/work/user/createUser.do'"><strong>Sign up</strong></button>
                   	</c:if>
            	        <c:if test="${sessionScope.id != null}">
                           <button class="btn btn-default dropdown-item" type="button" onclick="location.href='${context}/work/user/updateUser.do'"><strong>정보수정</strong></button>
                           <button class="btn btn-default dropdown-item" type="button" onclick="location.href='${context}/work/user/logout.do'"><strong>LOGOUT</strong></button>
                          
                   	</c:if>
                   	<c:if test="${sessionScope.id != null && sessionScope.grade == 'A'}">
                           <button class="btn btn-default dropdown-item" type="button" onclick="location.href='${context}/work/product/retrieveProductListForManage.do'"><strong>재고관리</strong></button>
               			<button class="btn btn-default dropdown-item" type="button" onclick="location.href='${context}/work/sell/retrieveStatisticsForProduct.do'"><strong>매출통계</strong></button>
               			<button class="btn btn-default dropdown-item" type="button" onclick="location.href='${context}/work/product/retrieveStatisticsForStock.do?productCategoryCd=P'"><strong>재고현황</strong></button>
               		</c:if>
            	</div>
            </div>
            
              <div class="col-lg-1 dropdown">
				  <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				  	<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-chat-left-dots-fill" viewBox="0 0 16 16">
				 	 <path d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H4.414a1 1 0 0 0-.707.293L.854 15.146A.5.5 0 0 1 0 14.793V2zm5 4a1 1 0 1 0-2 0 1 1 0 0 0 2 0zm4 0a1 1 0 1 0-2 0 1 1 0 0 0 2 0zm3 1a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
					</svg>
					<figcaption class=header-icon-text>
					    	게시판
					  </figcaption>
				  </a>
			  
			  <!-- 드롭다운메뉴 -->
			    <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
			  	<a class="dropdown-item" onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${context}/work/board/retrieveBoardList.do')">공지사항</a>
			  	 <a class="dropdown-item" onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${context}/work/board/retrieveBoardList2.do')">자유게시판</a>
                  <a class="dropdown-item" onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${context}/work/board/retrieveBoardList3.do')">커뮤니티게시판</a>
                  <a class="dropdown-item" onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${context}/work/board/retrieveBoardList4.do')">상담신청게시판</a>
			  </div>
		  </div>
		  <button type="button" class="btn btn-primary header-icon-wrap">
			  <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-gift-fill" viewBox="0 0 16 16">
			  <path d="M3 2.5a2.5 2.5 0 0 1 5 0 2.5 2.5 0 0 1 5 0v.006c0 .07 0 .27-.038.494H15a1 1 0 0 1 1 1v1a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h2.038A2.968 2.968 0 0 1 3 2.506V2.5zm1.068.5H7v-.5a1.5 1.5 0 1 0-3 0c0 .085.002.274.045.43a.522.522 0 0 0 .023.07zM9 3h2.932a.56.56 0 0 0 .023-.07c.043-.156.045-.345.045-.43a1.5 1.5 0 0 0-3 0V3zm6 4v7.5a1.5 1.5 0 0 1-1.5 1.5H9V7h6zM2.5 16A1.5 1.5 0 0 1 1 14.5V7h6v9H2.5z"/>
			</svg>
			  <figcaption class=header-icon-text>
			    	주문조회
			  </figcaption>
			  </button>
			  
			  
			   <button type="button" class="btn btn-primary header-icon-wrap">
			  <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-cart-fill" viewBox="0 0 16 16">
			  <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
			</svg>
			<figcaption class=header-icon-text>
			    	장바구니
			  </figcaption>
			   </button>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <div class="container-fluid bg-dark mb-30">
        <div class="row px-xl-5">
            <div class="col-lg-3 d-none d-lg-block">
                <a class="btn d-flex align-items-center justify-content-between bg-primary w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; padding: 0 30px;">
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
                            <a href="index.html" class="nav-item nav-link active">Home</a>
                            <a href="shop.html" class="nav-item nav-link">Shop</a>
                            <a href="detail.html" class="nav-item nav-link">Shop Detail</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages <i class="fa fa-angle-down mt-1"></i></a>
                                <div class="dropdown-menu bg-primary rounded-0 border-0 m-0">
                                    <a href="cart.html" class="dropdown-item">Shopping Cart</a>
                                    <a href="checkout.html" class="dropdown-item">Checkout</a>
                                </div>
                            </div>
                            <a href="contact.html" class="nav-item nav-link">Contact</a>
                        </div>
                        <div class="navbar-nav ml-auto py-0 d-none d-lg-block">
                            <a href="" class="btn px-0">
                                <i class="fas fa-heart text-primary"></i>
                                <span class="badge text-secondary border border-secondary rounded-circle" style="padding-bottom: 2px;">0</span>
                            </a>
                            <a href="" class="btn px-0 ml-3">
                                <i class="fas fa-shopping-cart text-primary"></i>
                                <span class="badge text-secondary border border-secondary rounded-circle" style="padding-bottom: 2px;">0</span>
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>
    <!-- Navbar End -->
			  