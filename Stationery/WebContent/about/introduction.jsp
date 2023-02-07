<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html>
<head>
    <meta name="description" content="introduction.jsp">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>GKYK 회사소개</title>

    <!-- <link href="${context}/css/introduction.css" rel="stylesheet"> -->
    <link href="${context}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${context}/css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">
    <!--  <link href="${context}/css/sb-admin-2.css" rel="stylesheet">-->
    <link href="${context}/font-awesome-4.4.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <style>
	*{
    margin: 5px;
    padding: 0;
    list-style: none;
    text-align: center;
	}
	
	h2{
	font-size: 20px; 
	font-weight: bold;
	}
	
	</style>
    

    <!-- jQuery -->
    
    <script src="${context}/js/jquery-1.9.1.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${context}/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="${context}/js/plugins/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="${context}/js/sb-admin-2.js"></script>
	<script type="text/javascript">

	</script>
</head>

<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<div id="jumbotron" class="container">
		<div class="jumbotron jumbotron-info" style="background-color: lightgray; font-size: 45px; font-weight: bold;">
			<p>GKYK mall 회사 소개</p><br>
				<h2>"GKYK은 커머스의 미래를 만들어 가고 있습니다."<br><br> GKYK은 고객 감동 실현을 위해 존재합니다. 고객들이 "GKYK 없이 그동안 어떻게 살았을까?" 라고 말할 때, 비로소 우리의 미션을 실현하고 있음을 알 수 있습니다. 고객들의 쇼핑과 식사, 생활 전반을 편하게 만들겠다는 유일한 집념으로 GKYK은 수억 달러 규모의 이커머스 산업 전반의 혁신을 이끌고 있습니다. GKYK은 가장 빠르게 성장하는 이커머스 기업 중 하나로, 국내 커머스 업계에서의 독보적인 입지와, 고객 신뢰를 구축했습니다.</h2>
			 <img class="img-fluid w-100" src="../img//company.jpg" alt="">
		</div>
	</div>
	<jsp:include page="../common/footer.jsp"></jsp:include>

</body>
</html>
