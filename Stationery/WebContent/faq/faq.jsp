<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="main.jsp">
<title>HS STATIONERY</title>
<link href="${context}/css/bootstrap.min.css" rel="stylesheet">
<link href="${context}/css/bootstrap-theme.css" rel="stylesheet">
<script src="${context}/js/jquery-1.9.1.js"></script>
<script src="${context}/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>

<div class="container">
    <div id="accordion">
        <div class="card">
            <div class="card-header" id="headingOne">
                <h5 class="mb-0 d-inline">
                    <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                      	배송문의
                    </button>
                 </h5>
            </div>
            <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                <div class="card-body" id="child1">
                    <div class="card">
                        <div class="card-header">
                            <a href="#" data-toggle="collapse" data-target="#collapseOneA">[상품누락] 상품을 구매했는데 일부만 배송되었어요.</a>
                        </div>
                        <div class="card-body collapse" data-parent="#child1" id="collapseOneA">
                          	  상품이 누락되었다면 교환을 통해 상품을 다시 받거나, 반품하고 환불 받을 수 있습니다.
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header">
                            <a href="#" data-toggle="collapse" data-target="#collapseOneA">Child A</a>
                        </div>
                        <div class="card-body collapse" data-parent="#child1" id="collapseOneA">
                            Crunch wolf moon tempor, sunt aliqua put a bird.
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header">
                            <a href="#" data-toggle="collapse" data-target="#collapseOneA">Child A</a>
                        </div>
                        <div class="card-body collapse" data-parent="#child1" id="collapseOneA">
                            Crunch wolf moon tempor, sunt aliqua put a bird.
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header">
                            <a href="#" data-toggle="collapse" data-target="#collapseOneB">Child B</a>
                        </div>
                        <div class="card-body collapse" data-parent="#child1" id="collapseOneB">
                            Another flipp runch wolf moon tempor, sunt aliqua put a bird.
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-header" id="headingOne">
                <h5 class="mb-0 d-inline">
                    <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                      faq 2
                    </button>
                 </h5>
            </div>
            <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                <div class="card-body" id="child1">
                    <div class="card">
                        <div class="card-header">
                            <a href="#" data-toggle="collapse" data-target="#collapseOneA">Child A</a>
                        </div>
                        <div class="card-body collapse" data-parent="#child1" id="collapseOneA">
                            Crunch wolf moon tempor, sunt aliqua put a bird.
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header">
                            <a href="#" data-toggle="collapse" data-target="#collapseOneB">Child B</a>
                        </div>
                        <div class="card-body collapse" data-parent="#child1" id="collapseOneB">
                            Another flipp runch wolf moon tempor, sunt aliqua put a bird.
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-header" id="headingOne">
                <h5 class="mb-0 d-inline">
                    <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                      faq3
                    </button>
                 </h5>
            </div>
            <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                <div class="card-body" id="child1">
                    <div class="card">
                        <div class="card-header">
                            <a href="#" data-toggle="collapse" data-target="#collapseOneA">Child A</a>
                        </div>
                        <div class="card-body collapse" data-parent="#child1" id="collapseOneA">
                            Crunch wolf moon tempor, sunt aliqua put a bird.
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header">
                            <a href="#" data-toggle="collapse" data-target="#collapseOneB">Child B</a>
                        </div>
                        <div class="card-body collapse" data-parent="#child1" id="collapseOneB">
                            Another flipp runch wolf moon tempor, sunt aliqua put a bird.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../common/footer.jsp" ></jsp:include>
</body>
</html>