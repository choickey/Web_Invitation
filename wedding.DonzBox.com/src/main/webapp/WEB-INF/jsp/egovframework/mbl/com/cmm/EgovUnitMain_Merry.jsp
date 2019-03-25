<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%
    int rNum = 0;
%>
<!DOCTYPE html>
<html lang="ko" xmlns:v="urn:schemas-microsoft-com:vml">

<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>결혼합니다 수용,영미</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/egovframework/mbl/cmm/jquery.mobile-1.3.2.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/egovframework/mbl/cmm/EgovMobile-1.3.2.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/egovframework/mbl/com/uss/ussCommon.css"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">

<script type="text/javascript" src="${pageContext.request.contextPath}/js/egovframework/mbl/cmm/jquery-1.9.1.js"></script>      
<script type="text/javascript" src="${pageContext.request.contextPath}/js/egovframework/mbl/cmm/jquery.mobile-1.3.2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/egovframework/mbl/cmm/EgovMobile-1.3.2.js"></script>

<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script>
  $(document).ready(function () {
        $('.bxslider').bxSlider({ // 클래스명 주의!
            auto: true, // 자동으로 애니메이션 시작
            speed: 500,  // 애니메이션 속도
            pause: 3500,  // 애니메이션 유지 시간 (1000은 1초)
            mode: 'horizontal', // 슬라이드 모드 ('fade', 'horizontal', 'vertical' 이 있음)
            autoControls: true, // 시작 및 중지버튼 보여짐
            pager: true, // 페이지 표시 보여짐
            captions: false, // 이미지 위에 텍스트를 넣을 수 있음
            controls: false,
            randomStart: true,
            adaptiveHeight: true,
        });
    });
</script>
<!-- 
        카카오맵
     https://developers.kakao.com/apps/116325/settings/general
        카카오맵 좌표추출 - SooYong (경상남도 창원시 진해구 충장로 10-40)
-->
</head>  
 
<body>
<!-- 모바일 페이지 start -->
<div><!--data-role="page"-->

    <!-- header start -->
    <div data-role="header" data-theme="z" class="com-egovHeaderBar">
        <h1><img src="${pageContext.request.contextPath}/images/donzbox/marry/title1.gif" width="80%" alt="Wedding Invation"></h1>
    </div>
    <!-- header end -->
    
    <!-- content start -->
    <div data-role="content" id="mapLi">
        <% rNum = (int)(Math.random()*3); %>
        <!--img width="100%" src="${pageContext.request.contextPath}/images/donzbox/marry/sooyong/together/<%=rNum %>.jpg"-->

<div>
    <ul class="bxslider">
        <li><a href="#"><img src="${pageContext.request.contextPath}/images/donzbox/marry/sooyong/together/1.jpg" alt="" title="이미지1"></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/images/donzbox/marry/sooyong/together/2.jpg" alt="" title="이미지2"></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/images/donzbox/marry/sooyong/together/3.jpg" alt="" title="이미지3"></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/images/donzbox/marry/sooyong/together/4.jpg" alt="" title="이미지4"></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/images/donzbox/marry/sooyong/together/5.jpg" alt="" title="이미지5"></a></li>
    </ul>
</div>

        <div data-role="collapsible-set" style="margin-top:-20px">
            <div data-role="collapsible" data-collapsed="true">
                <h3>어디서 하나요?</h3>
                <ul data-role="listview" data-inset="true" data-theme="d">
                    <li>
                        <h1><img width="100%" src="${pageContext.request.contextPath}/images/donzbox/marry/sooyong/map1.jpg"></h1>
                        <h1><img width="100%" src="${pageContext.request.contextPath}/images/donzbox/marry/sooyong/map2.jpg"></h1>
                    </li>
                    <li>
                        <!--div id="naverMap" style="width:100%;height:400px;"></div-->
                        <div id="map" style="width:100%; height:auto; min-height:400px; overflow:hidden;"></div>
                    </li>
                </ul>
            </div>
            <!--div data-role="collapsible" data-collapsed="true">
                <h3>신부 영미</h3>
                <ul data-role="listview" data-inset="true" data-theme="d">
                    <% rNum = (int)(Math.random()*1); %>
                    <li><h1><img src="${pageContext.request.contextPath}/images/donzbox/marry/sooyong/bride/<%=rNum %>.jpg" width="100%"></h1></li>
                </ul>
            </div>
            <div data-role="collapsible" data-collapsed="true">
                <h3>신랑 수용</h3>
                <ul data-role="listview" data-inset="true" data-theme="d">
                    <% rNum = (int)(Math.random()*0); %>
                    <li><h1><img src="${pageContext.request.contextPath}/images/donzbox/marry/sooyong/groom/<%=rNum %>.jpg" width="100%"></h1></li>
                </ul>
            </div>
            <div data-role="collapsible" data-collapsed="true">
                <h3>영상보기</h3>
                <ul data-role="listview" data-inset="true" data-theme="d">
                    <li><a href="http://www.youtube.com/watch?v=ZI1Q1SbiUFs&feature=youtu.be" target="_blank">웨딩 동영상을 공개합니다</a></li>
                </ul>
            </div-->
            <div data-role="collapsible" data-collapsed="true">
                <h3>초대합니다</h3>
                <ul data-role="listview" data-inset="true" data-theme="d">
                    <li style="text-align:center;">
                        <h1><img src="${pageContext.request.contextPath}/images/donzbox/marry/sooyong/thank/0.jpg" width="100%"></h1>
                        <h1>서로가 마주보며 다져온 사랑을</h1>
                        <h1>이제 함께 한 곳을 바라보며</h1>
                        <h1>큰 사랑으로 키우고자 합니다.</h1>
                        <h1>저희의 사랑을 함께 축복하여 주시면</h1>
                        <h1>큰 힘으로 삼겠습니다.</h1>
                        <h1>- 정수용,조영미 배상 -</h1>
                    </li>
                </ul>
            </div>
            <!-- div data-role="collapsible" data-collapsed="true">
                <h3>축하메세지</h3>
                <ul data-role="listview" data-inset="true" data-theme="d">
                    <li style="text-align:center;"><a href="${pageContext.request.contextPath}/cop/bbs/anonymous/selectBoardList.mdo?bbsId=BBSMSTR_000000000011" rel="external">조영미 양에게 축하글</a></li>
                    <li style="text-align:center;"><a href="${pageContext.request.contextPath}/cop/bbs/anonymous/selectBoardList.mdo?bbsId=BBSMSTR_000000000010" rel="external">정수용 군에게 축하글</a></li>
                </ul>
            </div-->
        </div>
    
    </div>
    <!-- content end -->
    
    <!-- footer start -->
    <div data-role="footer" data-theme="z" class="com-egovFooterBar paddT5" data-position="fixed">
        <h4>정수용-조영미의 청첩장입니다.</h4>
    </div>
    <!-- footer end -->

</div>
<!-- 모바일 페이지 end -->

<!-- 다음 지도 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=90600c52db79d73d0f369344709f895b"></script>
<script type="text/javascript">

// [ 지도객체 ]-------------------------------------------------------------------------------------------------
    var geo_x = 35.149090;
    var geo_y = 128.652118;
    var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
    var options = { //지도를 생성할 때 필요한 기본 옵션
        center: new daum.maps.LatLng(geo_x, geo_y), //지도의 중심좌표.
        level: 5 //지도의 레벨(확대, 축소 정도)
    };
    var map = new daum.maps.Map(container, options); //지도 생성 및 객체 리턴

// [ 컨트롤러 ]-------------------------------------------------------------------------------------------------
    // 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
    var mapTypeControl = new daum.maps.MapTypeControl();
    
    // 지도에 컨트롤을 추가해야 지도위에 표시됩니다
    // daum.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
    map.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);
    
    // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
    var zoomControl = new daum.maps.ZoomControl();
    map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);

// [ 마커표시 ]-------------------------------------------------------------------------------------------------
    // 마커가 표시될 위치입니다 
    var markerPosition  = new daum.maps.LatLng(geo_x, geo_y); 
    
    // 마커를 생성합니다
    var marker = new daum.maps.Marker({
        position: markerPosition
    });
    
    // 마커가 지도 위에 표시되도록 설정합니다
    marker.setMap(map);
    // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
    var iwContent = '<div style="font-size:10pt; width:170px; background-color:white; border:1px solid #333; padding:2px; text-align:center;">창원시 진해구 충장로 10-40<br/>☎ <a href="tel:0555527223">055-552-7223</a><br/>';
    iwContent += '<a href="http://map.daum.net/link/map/JK 컨벤션 웨딩 (해군회관),' + geo_x.toString() + ',' + geo_y.toString() + '" style="color: rgb(51, 51, 51); text-decoration-line: none; border-bottom-color: rgb(51, 51, 51);" target="_blank">큰지도보기</a> / ';
    iwContent += '<a href="http://map.daum.net/link/to/JK 컨벤션 웨딩 (해군회관),' + geo_x.toString() + ',' + geo_y.toString() + '" style="color: rgb(51, 51, 51); text-decoration-line: none; border-bottom-color: rgb(51, 51, 51);" target="_blank">길찾기</a>';
    iwContent += '</div>';
    //인포윈도우 표시 위치입니다
    var iwPosition = new daum.maps.LatLng(geo_x, geo_y);
    
    // 인포윈도우를 생성합니다
    var infowindow = new daum.maps.InfoWindow({
        position : iwPosition, 
        content : iwContent 
    });
      
    // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
    infowindow.open(map, marker); 
    
    // 창크기 자동조절
    var oMap;
    var w = 100, h = 100;
    w = $(window).width()  - 95;
    h = $(window).height() - 50;
    $(document).ready(function(){
        $(window).resize(function() {
            w = $(window).width()  - 95;
            h = $(window).height() - 50;
            oMap.setSize(new naver.maps.Size(w, h));
        });
    });
</script>
</body>
</html>