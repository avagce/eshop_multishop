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
<style>
a{
	color: #000 !important;
}
</style>
<body>
<jsp:include page="../common/header_userc.jsp"></jsp:include>

<div class="container">
<div id="accordion">
  <div class="card">
    <div class="card-header" id="heading-1">
      <h5 class="mb-0">
        <a role="button" data-toggle="collapse" href="#collapse-1" aria-expanded="false" aria-controls="collapse-1">
          배송문의
        </a>
      </h5>
    </div>
    <div id="collapse-1" class="collapse show" data-parent="#collapse-1" aria-labelledby="heading-1">
      <div class="card-body">

        <div id="accordion-1">
          <div class="card">
            <div class="card-header" id="heading-1-1">
              <h5 class="mb-0">
                <a class="collapsed show" role="button" data-toggle="collapse" href="#collapse-1-1" aria-expanded="false" aria-controls="collapse-1-1" color=>
                  [상품누락] 상품을 구매했는데 일부만 배송되었어요.
                </a>
              </h5>
              
            </div>
            <div id="collapse-1-1" class="collapsed show" data-parent="#accordion-1" aria-labelledby="heading-1-1" href="#collapse-1-1-1" style="overflow: hidden">
              <div class="card-body">
				1. 상품 수량이 누락되어 배송된 경우 <br>
• 구매한 상품 중 일부 수량이 누락되어 배송되었다면, 누락된 수량은 반품으로 진행해 주셔야 합니다. <br> <br>
2. 상품 구성품 중 일부가 누락되어 배송된 경우 <br>
• 구성품 일부에 대해서만 부분 배송이 불가하여, 상품 전체 교환으로 진행해 주셔야 합니다.
			</div>
            </div>
          </div>
          <div class="card">
            <div class="card-header" id="heading-1-2">
              <h5 class="mb-0">
                <a class="collapsed" role="button" data-toggle="collapse" href="#collapse-1-2" aria-expanded="false" aria-controls="collapse-1-2">
                  [상품파손] 배송 받은 상품이 파손되었어요.
                </a>
              </h5>
            </div>
            <div id="collapse-1-2" class="collapse" data-parent="#accordion-1" aria-labelledby="heading-1-2">
              <div class="card-body">
              	
상품이 파손되어 배송된 경우 교환 및 반품을 신청하실 수 있습니다. <br>
단, 교환의 경우 구매상품과 동일한 상품으로만 교환이 가능합니다. <br>
색상 및 사이즈 변경을 원하실 경우 반품접수 후 재구매 부탁드립니다
              </div>
            </div>
            <div class="card">
            <div class="card-header" id="heading-1-3">
              <h5 class="mb-0">
                <a class="collapsed" role="button" data-toggle="collapse" href="#collapse-1-3" aria-expanded="false" aria-controls="collapse-1-3">
                  [배송지] 주문 후 결제까지 완료했는데 배송지를 변경하고 싶어요
                </a>
              </h5>
            </div>
            <div id="collapse-1-3" class="collapse" data-parent="#accordion-1" aria-labelledby="heading-1-3">
              <div class="card-body">
              주문 후 이제 막 '결제완료'하셨다면, 배송지 변경이 가능합니다. <br>

단, 한 개의 주문번호에 하나의 배송지만 설정할 수 있습니다. 
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
        <a role="button" data-toggle="collapse" href="#collapse-2" aria-expanded="true" aria-controls="collapse-2">
          취소/교환/반품
        </a>
      </h5>
    </div>
    <div id="collapse-2" class="collapse show" data-parent="#accordion" aria-labelledby="heading-2">
      <div class="card-body">

        <div id="accordion-2">
          <div class="card">
            <div class="card-header" id="heading-2-1">
              <h5 class="mb-0">
                <a class="collapsed" role="button" data-toggle="collapse" href="#collapse-2-1" aria-expanded="false" aria-controls="collapse-2-1">
                  [반품] 반품 신청을 철회하고 싶어요.
                </a>
              </h5>
            </div>
            <div id="collapse-2-1" class="collapse" data-parent="#accordion-2" aria-labelledby="heading-2-1">
              <div class="card-body">
				반품할 상품이 아직 회수되지 않았거나 발송하지 않은 경우라면 반품 취소(철회)가 가능합니다.
			</div>
            </div>
          </div>
          <div class="card">
            <div class="card-header" id="heading-2-2">
              <h5 class="mb-0">
                <a class="collapsed" role="button" data-toggle="collapse" href="#collapse-2-2" aria-expanded="false" aria-controls="collapse-2-2">
                  [판매자 취소] 배송 전 주문 취소를 했는데, 상품이 배송되었습니다.
                </a>
              </h5>
            </div>
            <div id="collapse-2-2" class="collapse" data-parent="#accordion-2" aria-labelledby="heading-2-2">
              <div class="card-body">
              상품 준비중 상태에서 취소요청한 경우, 상품 발송 전이라면 판매자는 상품 발송을 취소할 수 있습니다. <br>
그러나 이미 판매자가 상품을 발송했다면 상품이 배송되었을 때 택배기사님께 수취거부를 말씀해주세요. <br> <br>
 
■ [주문취소]한 상품이 배송 중인 경우 <br>
[주문취소]한 상품이 발송되면 고객님께 문자로 상품 발송을 안내해드립니다. 택배사에서 연락을 받으시면 수취거부를 말씀해주세요. <br> <br>
 
■ [주문취소]한 상품을 받으신 경우 <br>
만약 택배사에 수취거부를 요청하지 못해 상품을 받으셨다면, 1~3일 이내에 택배기사가 방문하여 상품을 회수하게 됩니다.
              </div>
            </div>
            <div class="card">
            <div class="card-header" id="heading-2-3">
              <h5 class="mb-0">
                <a class="collapsed" role="button" data-toggle="collapse" href="#collapse-2-3" aria-expanded="false" aria-controls="collapse-2-3">
                  [반품비] 반품할 경우, 비용은 누가 부담하나요?
                </a>
              </h5>
            </div>
            <div id="collapse-2-3" class="collapse" data-parent="#accordion-2" aria-labelledby="heading-2-3">
              <div class="card-body">
              	
귀책사유에 따라 반품 비용의 부담 주체가 다릅니다. <br>
상품 불량/파손/오배송 등 판매자의 귀책인 경우에는 고객 부담의 반품/교환 비용이 발생하지 않습니다. <br>
다만, 구매자의 단순변심인 경우 고객 부담의 교환/반품 비용이 발생할 수 있습니다.
			</div>
            </div>
          </div>
          
          </div>
        </div>      
      
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="heading-3">
      <h5 class="mb-0">
        <a role="button" data-toggle="collapse" href="#collapse-3" aria-expanded="true" aria-controls="collapse-3">
          환불
        </a>
      </h5>
    </div>
    <div id="collapse-3" class="collapse show" data-parent="#accordion" aria-labelledby="heading-3">
      <div class="card-body">

        <div id="accordion-3">
          <div class="card">
            <div class="card-header" id="heading-3-1">
              <h5 class="mb-0">
                <a class="collapsed" role="button" data-toggle="collapse" href="#collapse-3-1" aria-expanded="false" aria-controls="collapse-3-1">
                 [환불] 다른 사람 명의의 계좌로 환불받을 수 있나요?
                </a>
              </h5>
            </div>
            <div id="collapse-3-1" class="collapse" data-parent="#accordion-3" aria-labelledby="heading-3-1">
              <div class="card-body">
					고객님 본인 명의의 계좌로만 환불이 가능합니다.
			</div>
            </div>
          </div>
          <div class="card">
            <div class="card-header" id="heading-3-2">
              <h5 class="mb-0">
                <a class="collapsed" role="button" data-toggle="collapse" href="#collapse-3-2" aria-expanded="false" aria-controls="collapse-3-2">
                  [환불계좌] 환불계좌를 등록/변경하고 싶어요.
                </a>
              </h5>
            </div>
            <div id="collapse-3-2" class="collapse" data-parent="#accordion-3" aria-labelledby="heading-3-2">
              <div class="card-body">
              등록/변경 가능하며 환불 계좌는 주문자 명의의 계좌만 등록할 수 있습니다. <br>
※ 단, 반품 진행 상태가 '환불진행중' 또는 '환불완료' 상태에서는 환불계좌를 변경할 수 없습니다. 환불계좌 변경이 불가할 경우 반품 진행 상태를 확인해 주세요.
              </div>
            </div>
            <div class="card">
            <div class="card-header" id="heading-3-3">
              <h5 class="mb-0">
                <a class="collapsed" role="button" data-toggle="collapse" href="#collapse-3-3" aria-expanded="false" aria-controls="collapse-3-3">
                  [환불] 휴대폰결제 후 취소했는데, 언제 환불되나요?
                </a>
              </h5>
            </div>
            <div id="collapse-3-3" class="collapse" data-parent="#accordion-3" aria-labelledby="heading-3-3">
              <div class="card-body">
              휴대폰결제 후 주문을 취소하는 경우 환불은 [취소완료] 문자 수신 후 평일(영업일) 기준 2일 이내 한도 복구됩니다.
			</div>
            </div>
          </div>
          
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