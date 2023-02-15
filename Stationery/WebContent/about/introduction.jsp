<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta name="description" content="userC.jsp">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>GKYK mall 회사소개</title>
	
	
	<link href="${context}/css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">
	<link href="${context}/css/plugins/social-buttons.css" rel="stylesheet">
	<link href="${context}/font-awesome-4.4.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="//code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css" rel="stylesheet" >
	<link href="${context}/css/plugins/dataTables.bootstrap.css" rel="stylesheet">
    <link href="${context}/css/process.css" rel="stylesheet">

	<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
	<script src="${context}/js/jquery.form.js"></script>
    <script src="${context}/js/plugins/metisMenu/metisMenu.min.js"></script>
    <script src="http://code.jquery.com/ui/1.11.3/jquery-ui.js"></script>
    <script src="../js/vegas.min.js"></script>
	<link rel="stylesheet" href="../css/vegas.min.css">

	<script src="${context}/js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="${context}/js/plugins/dataTables/dataTables.bootstrap.js"></script>

	<style type="text/css">
	h2{
		font-size: 20px !important;
	}
	</style>
	<script>
        $(document).ready(function() {
            //문서 전체(body 태그)에 플러그인 적용함
            $('body').vegas({
            slides: [
                //초반이미지 나타나게 함. 주석처리하면 안 나타남
                // {src: '/videos/sea.jpg'},
                {
                    //video{}안에 배경 동영상과 옵션값 지정함
            video: {
                //src 속성을 사용해 동영상 지정해 줌
                src: [
                    '../videos/location.mp4'],
                    //loop 속성을 사용해 동영상 반복 여부 지정함
                loop: true,
                //동영상을 무음상태로 만들어 줌
                mute: true
            }
        }
    ]
 });
});
</script>
</head>
<body>
<jsp:include page="../common/header_userc.jsp"></jsp:include>
	<div id="jumbotron" class="container">
		<div class="jumbotron jumbotron-info" style="background-color: lightgray;">
			<h1><font color="black"><strong>GKYK mall 회사 소개<br></strong>&nbsp;<span class="glyphicon glyphicon glyphicon-pencil"></span></font></h1>
				<h2>"GKYK은 커머스의 미래를 만들어 가고 있습니다."<br><br>We are building the future of commerce!<br><br>GKYK은 고객 감동 실현을 위해 존재합니다. 고객들이 "GKYK 없이 그동안 어떻게 살았을까?" 라고 말할 때, 비로소 우리의 미션을 실현하고 있음을 알 수 있습니다. 고객들의 쇼핑과 식사, 생활 전반을 편하게 만들겠다는 유일한 집념으로 GKYK은 수억 달러 규모의 이커머스 산업 전반의 혁신을 이끌고 있습니다. GKYK은 가장 빠르게 성장하는 이커머스 기업 중 하나로, 국내 커머스 업계에서의 독보적인 입지와 고객 신뢰를 구축했습니다.</h2>
			 <img class="img-fluid w-100" src="../img//company.jpg" alt="">
		<!--  	<video src="../img//location.mp4"></video> -->	
			 
		</div>
	</div>
	<jsp:include page="../common/footer.jsp"></jsp:include>
	
</body>
</html>
