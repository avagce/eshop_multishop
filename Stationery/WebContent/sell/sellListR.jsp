<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="description" content="sellListR.jsp">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>문구점</title>

	<link href="${context}/css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">
	<link href="${context}/css/plugins/dataTables.bootstrap.css" rel="stylesheet">

    <link href="${context}/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${context}/font-awesome-4.4.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<script src="${context}/js/jquery-1.9.1.js"></script>
	<script src="${context}/js/bootstrap.min.js"></script>

    <script src="${context}/js/plugins/metisMenu/metisMenu.min.js"></script>

    <script src="${context}/js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="${context}/js/plugins/dataTables/dataTables.bootstrap.js"></script>

    <script src="${context}/js/sb-admin-2.js"></script>
     <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>

    <script>
	var existFolder = '';
	var imageFolder = '';
	var path = '';

    $(document).ready(function() {
//         $('#dataTables-example').dataTable();

    });

    function fn_eval(self, resumePassYn, examNo){
   		$.ajax({
   			url:"${context}/work/applicant/updateEvalForResume.do?resumePassYn=" + resumePassYn + "&examNo=" + examNo,
   			success:function(result){
   				result = result.replace(/"/gi, "");
   				self.parent().next().children().html(result);
   			}
   		});
    }

    function fn_selEval(resumePassYn){
		var checked = $("input[name='chkBox']:checked");
		var checkedCnt = $("input[name='chkBox']:checked").length;

		var examNo = "";

		for(var i = 0; i < checkedCnt; i++){
			examNo = checked.eq(i).parent().parent().children("td").eq(3).html();
			$.ajax({
	   			url:"${context}/work/applicant/updateEvalForResume.do?resumePassYn=" + resumePassYn + "&examNo=" + examNo,
	   			async: false,
	   			success:function(result){
	   				result = result.replace(/"/gi, "");
	   				checked.eq(i).parent().parent().children("td").eq(10).html(result);
	   			}
	   		});
		}
    }

    function fn_resumeDetail(self){
    	var examNo = self.parent().parent().children("td").eq(3).html();

    	location.href = "${context}/work/applicant/retrieveResumeDetail.do?examNo=" + examNo;
    }

    function fn_save(){
    	var examNo = '${dsSellList[0].examNo}';

		if(confirm("서류심사를 완료하시겠습니까?")){
			location.href = "${context}/work/incruit/updateIStatusForResume.do?examNo=" + examNo;
		}
    }

    function dateFormat(date) {
        let month = date.getMonth() + 1;
        let day = date.getDate();
        let hour = date.getHours();
        let minute = date.getMinutes();
        let second = date.getSeconds();

        month = month >= 10 ? month : '0' + month;
        day = day >= 10 ? day : '0' + day;
        hour = hour >= 10 ? hour : '0' + hour;
        minute = minute >= 10 ? minute : '0' + minute;
        second = second >= 10 ? second : '0' + second;

        return date.getFullYear() + '-' + month + '-' + day;
       // + ' ' + hour + ':' + minute + ':' + second;
	}
    
    function fn_finalBuy(paramSellCode, paramSellCount, paramProductCode,paramProductName,paramSellPrice){
    	
    	var email = "${userparam.email}";
		var name = "${userparam.name}";
		var phonenum = "${userparam.phoneNum}";
		var address = "${userparam.address}";
		var postnum = "${userparam.postNum}";
		let today = new Date();
    	
		if(confirm("결제하시겠습니까?")){
			//location.href = "${context}/work/sell/updateFinalBuy.do?sellCode=" + paramSellCode + "&sellCount=" + paramSellCount + "&productCode=" + paramProductCode;
			
			//========================================
		
				
				
			var IMP = window.IMP;  
		    IMP.init("imp27037718");  // IMP.init( ) 메서드 가맹점코드 수정 바랍니다.
		    IMP.request_pay({
		        pg : 'html5_inicis', // version 1.1.0부터 지원.
		        pay_method : 'card',
		        merchant_uid : 'merchant_' + new Date().getTime(),
		        name : paramProductName,
		        amount : paramSellPrice,
		        buyer_email :email,
		        buyer_name : name,
		        buyer_tel : phonenum,
		        buyer_addr :address,
		        buyer_postcode : postnum,
		        m_redirect_url :"${context}/work/iamport/paymentDone.do"
		    }, function(rsp) {
		        if ( rsp.success ) {
		        	 var paymentInfo = {
		            		  imp_uid : rsp.imp_uid,
		            		  merchant_uid : rsp.merchant_uid,
		            		  paid_amount : rsp.paid_amount,
		            		  apply_num : rsp.apply_num,
		            		  paid_at : dateFormat(today)
		              };
		    		//location.href = "${context}/work/sell/updateFinalBuy.do?sellCode=" + paramSellCode + "&sellCount=" + paramSellCount + "&productCode=" + paramProductCode
		        	 $.ajax({
		            	  url :  "${context}/work/iamport/paymentProcess.do",
		            	  //method : "POST",
		            	   type:"POST", 	  
		            	  contentType: "application/json",
		            	  data :  JSON.stringify(paymentInfo),
		            	  success : function (data, textStatus) {
		            		  console.log(paymentInfo);
		            		  location.href = "${context}/work/sell/updateFinalBuy.do?sellCode=" + paramSellCode + "&sellCount=" + paramSellCount + "&productCode=" + paramProductCode;
		            		  //"/paymentDone.do";
							//"/paymentProcess.do",
		            	  },
		            	  error : function(e){
		            		  console.log(paymentInfo);
		            		  console.log(e);
		            	  
						}
		              });
		        } else {
		        	 alert("결제 실패:"+rsp.error_msg);
		        }
		    });	
    	}
    }
			  
		  

		
		
    
    </script>
</head>
<body>
<jsp:include page="/common/header_userc.jsp"></jsp:include>
	<div id="jumbotron" class="container">
		<div class="jumbotron jumbotron-info" style="background-color: lightgray;">
			<h1><font color="black"><strong>주문정보</strong>&nbsp;<i class="fa fa-credit-card fa-1x"></i></font></h1>
			<p>주문 정보를 확인해주세요</p>
		</div>

		<div class="row">
			<div class="col-md-12">
			    <div class="panel panel-default">
			        <!-- /.panel-heading -->
			        <div class="panel-body">
			            <div class="table-responsive">
			                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
			                    <thead>
			                        <tr>
			                        	<th style="text-align: center; vertical-align: middle; width: 30px;">상품코드번호</th>
			                            <th style="text-align: center; vertical-align: middle; width: 30px;">상품이미지</th>
			                            <th style="text-align: center; vertical-align: middle; width: 80px;">상품이름</th>
			                            <th style="text-align: center; vertical-align: middle; width: 30px;">상품단가</th>
			                            <th style="text-align: center; vertical-align: middle; width: 50px;">상품수량</th>
			                            <th style="text-align: center; vertical-align: middle; width: 30px;">결제금액</th>
			                            <th style="text-align: center; vertical-align: middle; width: 20px;">결제</th>
			                        </tr>
			                    </thead>
			                    <tbody>
			                    	<c:forEach items="${dsSellList}" var="dsSellList" varStatus="sellIdx">
			                         <tr>
			                         	<td style="text-align: center; vertical-align: middle;">${dsSellList.SELL_CODE}</td>
			                            <td style="text-align: center; vertical-align: middle;">
										<img name="image" width="110px" height="110px" src="${context}/binderImg/${dsSellList.PRODUCT_IMAGE}" class="img-thumbnail">
											<script type="text/javascript">
											 	var productCategoryCd = '${dsSellList.PRODUCT_CATEGORY_CD}';

											 	if(productCategoryCd == 'O'){
													imageFolder = "officeImg";
												}else if(productCategoryCd == 'P'){
													imageFolder = "penImg";
												}else if(productCategoryCd == 'S'){
													imageFolder = "storageImg";
												}else if(productCategoryCd == 'D'){
													imageFolder = "designImg";
												}else if(productCategoryCd == 'B'){
													imageFolder = "binderImg";
												}else if(productCategoryCd == 'R'){
													imageFolder = "dressImg";
												}else if(productCategoryCd == 'SH'){
													imageFolder = "shirtsImg";
												}
												path = $("img[name='image']").eq('${dsProductIdx.index}').attr("src");

												existFolder = path.split("/")[1];
												$("img[name='image']").eq('${sellIdx.index}').attr("src", path.replace(existFolder, imageFolder));
											</script>
			                            </td>
			                          
			                            <td style="text-align: center; vertical-align: middle;">${dsSellList.PRODUCT_NAME}</td>
			                            <td style="text-align: center; vertical-align: middle;">${dsSellList.PRODUCT_UNIT_PRICE}원</td>
			                            <td style="text-align: center; vertical-align: middle;">${dsSellList.SELL_COUNT}</td>
			                            <td style="text-align: center; vertical-align: middle;">${dsSellList.SELL_PRICE}원</td>
			                            <td style="text-align: center; vertical-align: middle;">
			                            	<button type="button" class="btn btn-primary" onclick="fn_finalBuy('${dsSellList.SELL_CODE}', '${dsSellList.SELL_COUNT}', '${dsSellList.PRODUCT_CODE}','${dsSellList.PRODUCT_NAME}','${dsSellList.SELL_PRICE}')">결제하기</button>
			                            </td>
			                         </tr>
			                        </c:forEach>
			                    </tbody>
			                </table>
			            </div>
			            <!-- /.table-responsive -->
			        </div>
			        <!-- /.panel-body -->
			    </div>
			    <!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
			<div class="col-md-12 col-md-offset-11">
				<button type="button" class="btn btn-success btn-lg"  style="float:right;" onclick="fn_back()">뒤로가기</button>
			</div>
		</div>
	</div>
	
<jsp:include page="/common/footer.jsp"></jsp:include>
</body>
</html>