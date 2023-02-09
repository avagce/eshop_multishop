<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<head>
		<meta name="description" content="userC.jsp">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>GKYK mall 찾아오시는 길</title>
	<link href="${context}/css/bootstrap.min.css" rel="stylesheet">
	<link href="${context}/css/bootstrap-theme.css" rel="stylesheet">
	<link href="${context}/css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">
	<link href="${context}/css/plugins/social-buttons.css" rel="stylesheet">
	<link href="${context}/font-awesome-4.4.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="//code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css" rel="stylesheet" >
		<link href="${context}/css/plugins/dataTables.bootstrap.css" rel="stylesheet">
    <link href="${context}/css/process.css" rel="stylesheet">

	<script src="${context}/js/jquery-1.9.1.js"></script>
	<script src="${context}/js/jquery.form.js"></script>
    <script src="${context}/js/plugins/metisMenu/metisMenu.min.js"></script>

	<script src="${context}/js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="${context}/js/plugins/dataTables/dataTables.bootstrap.js"></script>

    <script src="http://code.jquery.com/ui/1.11.3/jquery-ui.js"></script>
	<script type="text/javascript"></script>
	
    <style>
	*{
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 23px;
    font-weight: bolder;
    list-style: none;
    text-decoration: none;
    margin:0px;
    padding:0px;
	align-items: center;
	text-align: center;
}

#map{
	width: 600px;
    height: 400px; 
    margin: 50px 215px; 
    padding: 50px;
    
}


	
	</style>
</head>
<body>

<jsp:include page="../common/header_userc.jsp"></jsp:include>
	<div id="jumbotron" class="container" >
		<div class="jumbotron jumbotron-info" style="background-color: lightgray" >
			<h1><font color="black">&nbsp;<span class="glyphicon glyphicon glyphicon-pencil"></span></font></h1>
			<div class="container-fluid" >
                    <div id="map" ></div>
                    <div class="row mt-3" style="width:100%">
                        <div class="col-md-12" >
                            <h3>GKYK mall 오시는 길</h3>
                            <p>
                               	 이메일 : GKYKmall@gmail.com<br>
                               	 전화번호 : 02-1234-5678<br>
                              	  주소 : 행복시 행복동 123번지 2층
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>


<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=55fadbaffd48c6dcbcd6419f740a023b" ></script>
	<jsp:include page="../common/footer.jsp" ></jsp:include>

<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.50325249602558, 126.87888030892368), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨

    };

var map = new kakao.maps.Map(mapContainer, mapOption) ; // 지도를 생성합니다

// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(37.50325249602558, 126.87888030892368); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
    
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);  

var markerPosition = marker.getPosition(); 
map.relayout();
map.setCenter(markerPosition);

</script>
</body>
</html>