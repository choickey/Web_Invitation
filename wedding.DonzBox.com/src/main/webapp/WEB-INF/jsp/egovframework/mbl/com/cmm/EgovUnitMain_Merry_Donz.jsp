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
<title>결혼합니다 동주,혜경</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/egovframework/mbl/cmm/jquery.mobile-1.3.2.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/egovframework/mbl/cmm/EgovMobile-1.3.2.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/egovframework/mbl/com/uss/ussCommon.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/egovframework/mbl/cmm/jquery-1.9.1.js"></script>	    
<script type="text/javascript" src="${pageContext.request.contextPath}/js/egovframework/mbl/cmm/jquery.mobile-1.3.2.js"></script>   	
<script type="text/javascript" src="${pageContext.request.contextPath}/js/egovframework/mbl/cmm/EgovMobile-1.3.2.js"></script>
<!--script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=t8qdyaxk3p"></script-->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=90600c52db79d73d0f369344709f895b"></script>
<script type="text/javascript">
// http://donzbox.com/mbl/com/mdi/selectMobileDeviceIdent.mdo
</script>
<!-- 
        좌표추출
     http://openapi.map.naver.com/api/geocode.php?key=a64e324dad5fa88141a945d1afdc4ac2&encoding=utf-8&coord=LatLng&query=서울시서초구잠원동27-2
     <point>
       <x>313490</x> 
       <y>546258</y> 
     </point>
-->
</head>  
 
<body>
<!-- 모바일 페이지 start -->

<div data-role="page">

<!-- header start -->
<div data-role="header" data-theme="z" class="com-egovHeaderBar">
	<h1><img src="${pageContext.request.contextPath}/images/donzbox/marry/title1.gif" width="80%" alt="Wedding Invation"></h1>
</div>
<!-- header end -->

<!-- content start -->
<div data-role="content" id="mapLi">
	<img width="100%" src="${pageContext.request.contextPath}/images/donzbox/marry/top1.jpeg">
	<div data-role="collapsible-set">
		<div data-role="collapsible" data-collapsed="true">
			<h3>어디서 하나요?</h3>
				<ul data-role="listview" data-inset="true" data-theme="d">
					<% rNum = (int)(Math.random()*10); %>
					<li><h1><img src="${pageContext.request.contextPath}/images/donzbox/marry/togeder/togeder<%=rNum %>.jpg" width="100%"></h1>
						일시 : 2014년 8월 30일 (토)<br/>
						시간 : 오후 2시 30분<br/>
						장소 : JS강남 웨딩문화원 6층 S홀
						<!--div id="naverMap" style="width:100%;height:400px;"></div-->
						<div id="map" style="width:100%;height:400px;"></div>
					</li>
					<li><h1><img width="100%" src="${pageContext.request.contextPath}/images/donzbox/marry/map.jpg"></h1></li>
				</ul>
		</div>
		<div data-role="collapsible" data-collapsed="true">
			<h3>신부 혜경</h3>
				<ul data-role="listview" data-inset="true" data-theme="d">
					<% rNum = (int)(Math.random()*10); %>
					<li><h1><img src="${pageContext.request.contextPath}/images/donzbox/marry/baby/baby<%=rNum %>.jpg" width="100%"></h1></li>
				</ul>
		</div>
		<div data-role="collapsible" data-collapsed="true">
			<h3>신랑 동주</h3>
				<ul data-role="listview" data-inset="true" data-theme="d">
					<% rNum = (int)(Math.random()*10); %>
					<li><h1><img src="${pageContext.request.contextPath}/images/donzbox/marry/donz/donz<%=rNum %>.jpg" width="100%"></h1></li>
				</ul>
		</div>
		<div data-role="collapsible" data-collapsed="true">
			<h3>영상보기</h3>
				<ul data-role="listview" data-inset="true" data-theme="d">
					<li><a href="http://www.youtube.com/watch?v=ZI1Q1SbiUFs&feature=youtu.be" target="_blank">웨딩 동영상을 공개합니다</a></li>
				</ul>
		</div>
		<div data-role="collapsible" data-collapsed="true">
			<h3>감사의 글 올립니다</h3>
				<ul data-role="listview" data-inset="true" data-theme="d">
					<li style="text-align:center;">
						<h1><img src="${pageContext.request.contextPath}/images/donzbox/marry/end.jpeg" width="100%"></h1>
						<h1>서로가 마주보며 다져온 사랑을</h1>
						<h1>이제 함께 한 곳을 바라보며</h1>
						<h1>큰 사랑으로 키우고자 합니다.</h1>
						<h1>저희의 사랑을 함께 축복하여 주시면</h1>
						<h1>큰 힘으로 삼겠습니다.</h1>
						<h1>- 이동주,조혜경 배상 -</h1>
					</li>
				</ul>
		</div>
		<div data-role="collapsible" data-collapsed="true">
			<h3>축하메세지</h3>
				<ul data-role="listview" data-inset="true" data-theme="d">
					<li style="text-align:center;"><a href="${pageContext.request.contextPath}/cop/bbs/anonymous/selectBoardList.mdo?bbsId=BBSMSTR_000000000011" rel="external">조혜경양에게 축하글</a></li>
					<li style="text-align:center;"><a href="${pageContext.request.contextPath}/cop/bbs/anonymous/selectBoardList.mdo?bbsId=BBSMSTR_000000000010" rel="external">이동주군에게 축하글</a></li>
				</ul>
		</div>
	</div>

</div>

<!-- content end -->

<!-- footer start -->
<div data-role="footer" data-theme="z" class="com-egovFooterBar paddT5" data-position="fixed">
<h4>Thank you again for everything you’ve done.　 -DonzBox-</h4>
</div>
<!-- footer end -->

</div>
<!-- 모바일 페이지 end -->

<!-- 다음 지도 -->
<script type="text/javascript">
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
	    center: new daum.maps.LatLng(37.5143890, 127.0191746), //지도의 중심좌표.
	    level: 3 //지도의 레벨(확대, 축소 정도)
	};
	var map = new daum.maps.Map(container, options); //지도 생성 및 객체 리턴

	/*
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
	var oCenterPoint = new naver.maps.LatLng(37.5143890, 127.0191746);
	var defaultLevel = 12;
	oMap = new naver.maps.Map(document.getElementById('naverMap'),
				{
					point              : oCenterPoint,
					zoom               : defaultLevel,
					enableWheelZoom    : true,
					enableDragPan      : true,
					enableDblClickZoom : false,
					mapMode            : 0,
					activateTrafficMap : false,
					activateBicycleMap : false,
					minMaxLevel        : [ 1, 14 ],
					size               : new naver.maps.Size(w, h)
				});
	
	// 축척도
	var oSlider = new naver.maps.ZoomControl();
	oMap.addControl(oSlider);
	oSlider.setPosition({
		top  : 40,
		left : 5
	});
	
	// - 일반,위성
	var oMapTypeBtn = new naver.maps.MapTypeBtn();
	oMap.addControl(oMapTypeBtn);
	oMapTypeBtn.setPosition({
		bottom : 5,
		right  : 5
	});
	
	// - 교통 범례 선언
	var oTrafficGuide = new naver.maps.TrafficGuide();
	oTrafficGuide.setPosition({
		top   : 4,
		right : 75
	}); // - 교통 범례 위치 지정.
	oMap.addControl(oTrafficGuide); // - 교통 범례를 지도에 추가.
	
	// - 실시간 교통지도 버튼 선언
	var trafficButton = new naver.maps.TrafficMapBtn(); 
	trafficButton.setPosition({
		top    : 5,
		right  : 5
	}); // - 실시간 교통지도 버튼 위치 지정
	oMap.addControl(trafficButton);

	// - 지도위에 압정 포인트 찍기
	var oSize = new naver.maps.Size(28, 37);
	var oOffset = new naver.maps.Size(14, 37);
	var oIcon = new naver.maps.Icon('http://static.naver.com/maps2/icons/pin_spot2.png', oSize, oOffset);
	var tMarker = new naver.maps.Marker(oIcon);
	tMarker.setPoint(oCenterPoint);
	oMap.addOverlay(tMarker);

	// - infowindow 사용 시
	var mapInfoTestWindow = new naver.maps.InfoWindow(); // - info window 생성
	// - InfoWindow 에 들어갈 내용은 setContent 로 자유롭게 넣을 수 있습니다. 외부 css를 이용할 수 있으며, 
	// - 외부 css에 선언된 class를 이용하면 해당 class의 스타일을 바로 적용할 수 있습니다.
	// - 단, DIV 의 position style 은 absolute 가 되면 안되며, 
	// - absolute 의 경우 autoPosition 이 동작하지 않습니다.
	mapInfoTestWindow.setContent('<div style="width:145px; background-color:white; border: 1px solid #333; text-align:center;">JS강남 웨딩문화원<br/>서울시 서초구 잠원동 27-2<br/>02-3445-9000</div>');
	mapInfoTestWindow.setPoint(oCenterPoint);
	mapInfoTestWindow.setVisible(true);
	mapInfoTestWindow.setPosition({left : 3, top : -43});
	mapInfoTestWindow.autoPosition();
	oMap.addOverlay(mapInfoTestWindow); // - 지도에 추가
	*/
</script>
</body>
</html>

