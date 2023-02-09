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
    <div class="card-header" id="heading-1">
      <h5 class="mb-0">
        <a role="button" data-toggle="collapse" href="#collapse-1" aria-expanded="true" aria-controls="collapse-1">
          1. My Account
        </a>
      </h5>
    </div>
    <div id="collapse-1" class="collapse show" data-parent="#accordion" aria-labelledby="heading-1">
      <div class="card-body">

        <div id="accordion-1">
          <div class="card">
            <div class="card-header" id="heading-1-1">
              <h5 class="mb-0">
                <a class="collapsed" role="button" data-toggle="collapse" href="#collapse-1-1" aria-expanded="false" aria-controls="collapse-1-1">
                  1.1 Opening an account
                </a>
              </h5>
            </div>
            <div id="collapse-1-1" class="collapse" data-parent="#accordion-1" aria-labelledby="heading-1-1">
              <div class="card-body">
				
			</div>
            </div>
          </div>
          <div class="card">
            <div class="card-header" id="heading-1-2">
              <h5 class="mb-0">
                <a class="collapsed" role="button" data-toggle="collapse" href="#collapse-1-2" aria-expanded="false" aria-controls="collapse-1-2">
                  1.2 Sign in Details
                </a>
              </h5>
            </div>
            <div id="collapse-1-2" class="collapse" data-parent="#accordion-1" aria-labelledby="heading-1-2">
              <div class="card-body">
              </div>
            </div>
            <div class="card">
            <div class="card-header" id="heading-1-3">
              <h5 class="mb-0">
                <a class="collapsed" role="button" data-toggle="collapse" href="#collapse-1-3" aria-expanded="false" aria-controls="collapse-1-3">
                  1.1 Opening an account
                </a>
              </h5>
            </div>
            <div id="collapse-1-3" class="collapse" data-parent="#accordion-1" aria-labelledby="heading-1-3">
              <div class="card-body">
			</div>
            </div>
          </div>
          
          </div>
        </div>      
      
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="heading-2">
      <h5 class="mb-0">
        <a class="collapsed" role="button" data-toggle="collapse" href="#collapse-2" aria-expanded="false" aria-controls="collapse-2">
          2. Placing an Order
        </a>
      </h5>
    </div>
    <div id="collapse-2" class="collapse" data-parent="#accordion" aria-labelledby="heading-2">
      <div class="card-body">
        Text
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="heading-3">
      <h5 class="mb-0">
        <a class="collapsed" role="button" data-toggle="collapse" href="#collapse-3" aria-expanded="false" aria-controls="collapse-3">
          3. Delivery
        </a>
      </h5>
    </div>
    <div id="collapse-3" class="collapse" data-parent="#accordion" aria-labelledby="heading-3">
      <div class="card-body">
        Text
      </div>
    </div>
  </div>
</div>
</div>
<jsp:include page="../common/footer.jsp" ></jsp:include>
</body>
</html>