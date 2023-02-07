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

    <link href="${context}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${context}/css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">
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
	align-items: center;
	text-align: center;
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
    


#map{
    width:600px;
    height:400px; 
    margin: 50px 270px; 
    padding: 50px;
	display: center;    
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
      <link rel="stylesheet" href="/css/vegas.min.css">
    <script src="../javascript/vegas.min.js"></script>
    

    <!-- jQuery -->
    
    <script src="${context}/js/jquery-1.9.1.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${context}/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="${context}/js/plugins/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="${context}/js/sb-admin-2.js"></script> 
	<script type="text/javascript">

	</script><script>
        $(document).ready(function() {
            //문서 전체(body 태그)에 플러그인 적용함
            $('body').vegas({
            slides: [
                //초반이미지 나타나게 함. 주석처리하면 안 나타남
                // {src: '/videos/location.mp4'},
                {
                    //video{}안에 배경 동영상과 옵션값 지정함
            video: {
                //src 속성을 사용해 동영상 지정해 줌
                src: [
                    '/css/videos//location.mp4'],
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

	 <p>
        <!--  vagas를 활용하여 풀스크린 배경화면을 구성 -->
        <strong>
            <a href="https://vegas.jaysalvat.com"></a>
        </strong>
    </p>
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
