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

    <title>GKYK 찾아오시는 길</title>

    <link href="${context}/css/introduction.css" rel="stylesheet">
    <link href="${context}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${context}/css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">
    <!--  <link href="${context}/css/sb-admin-2.css" rel="stylesheet">-->
    <link href="${context}/font-awesome-4.4.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
   
    <style>
	*{
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 23px;
    font-weight: bolder;
    list-style: none;
    text-decoration: none;
    margin:0px;
    padding:0px;
}

.intro_bg{
    width: 1280px;
    height: 700px;
}
    

.header{
    display: flex;
    width: 1280px;
    margin: auto;
    background: lightblue;
    height: 86px;
}

.searcharea{
    width: 300px;
    height: 40px;
    background: rgb(255, 255, 255);
    border-radius: 5px;
    margin-top: 24px;
}

.searcharea>form>input{
    border: none;
    width: 240px;
    height: 40px;
    background: rgb(157, 252, 255);
    color:rgb(178, 51, 51);
    padding-left: 10px;
}
.searcharea>form>span{
    width: 50px;
    color:rgb(121, 121, 121);
    font-weight: bold;
    cursor: pointer;
}

.nav{
    display: flex;
    justify-content: flex-start;
    line-height: 86px;
    width: 1000px;
    background: rgba(0,0,0,0.5);
    text-align: center;
    line-break: auto;

}

.nav>li{
    margin-left: 72px;
}

.nav>li>a{
    color: #fff;
}

.amount{
    position: relative;
    top:-66px;
    display: flex;
    width:1280px;
    background: #fff;
    margin:auto;
    
}

.intro_bg{
    background-image:url(../img/map_background.jpg);
    width: 1280px;
    height: 700px;
}

.amount>li>div{
    text-align: top;
}

.amount>li>div:not(:last-child){
    border-right: 1px solid gray;
}



.main_text0{
    width: 100%;
    height: 600px;
    background: #f1f2f3;
    margin-top: -66px;
}




.text>li{
    color: #fff;
    border: #f1f2f3;
    margin-left: 42px;
    font-size: 55px;
}
    


#map{
    width:400px;
    height:250px; 
    margin: 50px 400px; 
    padding: 50px;
    
}

p{
    text-align: center;
}

div h2{
    text-align: center;
}

.col-md-12{
    text-align: center;
    
}

h3{
    font-size: 50px;
    margin-top: 20px;
    margin-bottom: 1px;
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
	<div class="container">
                    <div id="map"></div>
                    <div class="row mt-3">
                        <div class="col-md-12">
                            <h3>GKYK mall 오시는 길</h3>
                            <p>
                               	 이메일 : GKYKmall@gmail.com<br>
                               	 전화번호 : 02-1234-5678<br>
                              	  주소 : 행복시 행복동 123번지 2층
                            </p>
                        </div>
                    </div>
                </div>
	<jsp:include page="../common/footer.jsp"></jsp:include>


<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=55fadbaffd48c6dcbcd6419f740a023b"></script>

<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.50325249602558, 126.87888030892368), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

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
</script>
</body>
</html>
