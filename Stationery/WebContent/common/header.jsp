<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="context"><%=request.getContextPath()%></c:set>
<head>
<style type="text/css">
a {
	cursor: pointer;
}
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
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap"
	rel="stylesheet">

<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="${context}/lib/animate/animate.min.css" rel="stylesheet">
<link href="${context}/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="${context}/css/style.css" rel="stylesheet">

<!--   <script src="${context}/js/jquery.js"></script>-->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="${context}/js/common.js"></script>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>
<script src="${context}/lib/easing/easing.min.js"></script>
<script src="${context}/lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Contact Javascript File -->
<script src="${context}/mail/jqBootstrapValidation.min.js"></script>
<script src="${context}/mail/contact.js"></script>

<!-- Template Javascript -->
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

	<div class="GKYK-header">
		<div class="container-fluid">
			<div class="row bg-secondary py-1 px-xl-5">
				<div class="col-lg-6 d-none d-lg-block">
					<div class="d-inline-flex align-items-center h-100">
						<a class="text-body mr-3" onclick="location.href='${context}/about/introduction.jsp'" style="cursor: pointer;">About</a>

						<!-- 메뉴를 누를때마다 user 의 등급과 로긴체크,로긴 됐을때 어디로 이동할지를 넣어준다 -->

						<a class="text-body mr-3" onclick="location.href='${context}/location/location.jsp'" style="cursor: pointer;">location</a> <a class="text-body mr-3" href="">Help</a> 
						<a class="text-body mr-3" href="">FAQs</a>
					</div>
				</div>
				<div class="col-lg-6 text-center text-lg-right">
					<div class="d-inline-flex align-items-center">
						<c:if test="${sessionScope.id == null}">
							<a class="dropdown-item" type="button" onclick="location.href='${context}/user/login.jsp'"><strong>LOGIN</strong></a>
							<a class="dropdown-item" type="button" onclick="location.href='${context}/work/user/createUser.do'"><strong>Sign up</strong></a>
						</c:if>
						<c:if test="${sessionScope.id != null}">
							<a class="dropdown-item" type="button" onclick="location.href='${context}/work/user/updateUser.do'">정보수정</a>
							<a class="dropdown-item" type="button" onclick="location.href='${context}/work/user/logout.do'"><strong>LOGOUT</strong></a>
							<a class="dropdown-item" type="button" onclick="location.href='${context}/work/cart/retrieveCartList.do'"><strong>장바구니</strong></a>
						</c:if>
					</div>
				</div>
				<div class="d-inline-flex align-items-center d-block d-lg-none">
					<a href="" class="btn px-0 ml-2"> <i class="fas fa-heart text-dark"></i> <span class="badge text-dark border border-dark rounded-circle" style="padding-bottom: 2px;">0</span>
					</a> 
					<a href="" class="btn px-0 ml-2"> <i class="fas fa-shopping-cart text-dark"></i> <span class="badge text-dark border border-dark rounded-circle" style="padding-bottom: 2px;">0</span>
					</a>
				</div>
			</div>
		</div>
		<div class="row align-items-center bg-light py-3 px-xl-5 d-none d-lg-flex">
			<div class="col-lg-12">
				<div class="row align-items-center bg-light py-3 px-xl-5 d-none d-lg-flex outside-search-box">
					<div class="col-lg-2">
						<a href="${gomain}" class="text-decoration-none">
							<img alt="로고 이미지" src="${context}/img/GKYK_logo2.png" style="width: 160px">
						</a>
					</div>
					<div class="col-lg-6 col-6 text-left search-keyword-input">
						<form class="d-flex search-box-all" role="search">
							<div id="headerSearch" class="input-group">
								<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
								<div class="input-group-append">
									<button type="button" class="btn dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										<span id="searchSelected">Intranet</span>
										<span class="sr-only">Toggle Dropdown</span>
										<div class="dropdown-menu">
											<a class="dropdown-item intranet" href="#">Intranet</a>
											<a class="dropdown-item people-finder" href="#">People Finder</a>
										</div>
									</button>
								</div>
							</div>
							<button class="btn search-button" type="submit">Search</button>
						</form>
					</div>
					<!-- 드롭다운 부분 -->
					<!--    <div class="col-lg-4 col-6 text-right">
			                <div class="btn-group" role="group" aria-label="Basic example">
			  				<button type="button" class="btn btn-primary header-icon-wrap">
			  		-->
					<div class="row align-items-center bg-light py-3 px-xl-5 d-none d-lg-flex">
						<div class="dropdown">
							<a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16"><path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z" /></svg>
								<figcaption class=header-icon-text">마이페이지</figcaption>
							</a>
							<!-- 이미지 버튼 종료 -->
							<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
								<c:if test="${sessionScope.id == null}">
									<button class="btn btn-default" type="button" onclick="location.href='${context}/user/login.jsp'">
										<strong>LOGIN</strong>
									</button>
									<button class="btn btn-default" type="button" onclick="location.href='${context}/work/user/createUser.do'">
										<strong>Sign up</strong>
									</button>
								</c:if>
								<c:if test="${sessionScope.id != null}">
									<button class="btn btn-default" type="button" onclick="location.href='${context}/work/user/updateUser.do'">
										<strong>정보수정</strong>
									</button>
									<button class="btn btn-default" type="button" onclick="location.href='${context}/work/user/logout.do'">
										<strong>LOGOUT</strong>
									</button>
								</c:if>
								<c:if test="${sessionScope.id != null && sessionScope.grade == 'A'}">
									<button class="btn btn-default" type="button" onclick="location.href='${context}/work/product/retrieveProductListForManage.do'">
										<strong>재고관리</strong>
									</button>
									<button class="btn btn-default" type="button" onclick="location.href='${context}/work/sell/retrieveStatisticsForProduct.do'">
										<strong>매출통계</strong>
									</button>
									<button class="btn btn-default" type="button" onclick="location.href='${context}/work/product/retrieveStatisticsForStock.do?productCategoryCd=P'">
										<strong>재고현황</strong>
									</button>
								</c:if>
							</div>
							<!-- 드롭다운 버튼 부분 종료 -->
						</div>
						<!-- 드롭다운 부분 -->
						<div class="dropdown">
							<a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-chat-left-dots-fill" viewBox="0 0 16 16">
							<path d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H4.414a1 1 0 0 0-.707.293L.854 15.146A.5.5 0 0 1 0 14.793V2zm5 4a1 1 0 1 0-2 0 1 1 0 0 0 2 0zm4 0a1 1 0 1 0-2 0 1 1 0 0 0 2 0zm3 1a1 1 0 1 0 0-2 1 1 0 0 0 0 2z" /></svg>
								<figcaption class=header-icon-text>게시판</figcaption>
								</button>
							</a>
							<!-- 드롭다운메뉴 -->
							<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
								<a class="dropdown-item" onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${context}/work/board/retrieveBoardList.do')">공지사항</a>
								<a class="dropdown-item" onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${context}/work/board/retrieveBoardList2.do')">자유게시판</a>
								<a class="dropdown-item" onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${context}/work/board/retrieveBoardList3.do')">커뮤니티게시판</a>
								<a class="dropdown-item" onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${context}/work/board/retrieveBoardList4.do')">상담신청게시판</a>
							</div>
						</div>

						<!-- 드롭다운 버튼 부분 종료 -->


						<button type="button" class="btn btn-primary header-icon-wrap">
							<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-gift-fill" viewBox="0 0 16 16">
							<path d="M3 2.5a2.5 2.5 0 0 1 5 0 2.5 2.5 0 0 1 5 0v.006c0 .07 0 .27-.038.494H15a1 1 0 0 1 1 1v1a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h2.038A2.968 2.968 0 0 1 3 2.506V2.5zm1.068.5H7v-.5a1.5 1.5 0 1 0-3 0c0 .085.002.274.045.43a.522.522 0 0 0 .023.07zM9 3h2.932a.56.56 0 0 0 .023-.07c.043-.156.045-.345.045-.43a1.5 1.5 0 0 0-3 0V3zm6 4v7.5a1.5 1.5 0 0 1-1.5 1.5H9V7h6zM2.5 16A1.5 1.5 0 0 1 1 14.5V7h6v9H2.5z" /></svg>
							<figcaption class=header-icon-text>주문조회</figcaption>
						</button>

						<button type="button" class="btn btn-primary header-icon-wrap">
							<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-cart-fill" viewBox="0 0 16 16">
							<path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" /></svg>
							<figcaption class=header-icon-text>장바구니</figcaption>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Topbar End -->

	<!-- Navbar Start -->
	<div class="container-fluid mb-30">
		<div class="row px-xl-5 header-category-nav-bar">
			<div class="col-lg-3 d-none d-lg-block header-category">
				<a class="btn d-flex align-items-center justify-content-between bg-primary w-100 header-category-btn" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; padding: 0 30px;">
					<h6 class="text-dark m-0"><i class="fa fa-bars mr-2"></i>카테고리</h6><i class="fa fa-angle-down text-dark"></i>
				</a>
				<nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 bsg-light category-list" id="navbar-vertical" style="width: calc(100% - 30px); z-index: 999;">
					<div class="navbar-nav w-100">
						<div class="nav-item dropdown dropright">
							<a href="#" class="nav-link dropdown-toggle first-category" data-toggle="dropdown">Dresses <i class="fa fa-angle-right float-right mt-1"></i></a>
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
			<div class="col-lg-9"></div>
		</div>
	</div>
	</div>
	<!-- Navbar End -->