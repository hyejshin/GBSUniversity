<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=p7R4WhlR39kyYaxGO2wn&submodules=geocoder"></script>

<style>
	#mapArea {
		border: 1px solid #ddd;
		display: block;
		width: 100%;
		height: 300px;
		clear: both;
	}
</style>

<div class="container">
<h4>Lotte Resort Sokcho</h4>
주소: 강원도 속초시 대포항길 186
    <div class="map">
    	<div id="mapArea" style="border: 1px solid #ddd;"></div>
    		<script type="text/javascript">
		      var position = new naver.maps.LatLng(38.18067, 128.6105);
		      var map = new naver.maps.Map('mapArea', {
		    	  center: position,
		    	  zoom: 11
		      });
		      
		      var markerOptions = {
		    		  position: position,
		    		  map: map,
		    	icon: {
		    		url: '/image/pin_spot.png',
		    		size: new naver.maps.Size(33, 44),
		    		origin: new naver.maps.Point(0, 0),
		    		anchor: new naver.maps.Point(11, 35)
		    	}
		      };
		      var marker = new naver.maps.Marker(markerOptions);
		</script>
    </div>
	
	<img src="/images/resortmap.png" width="100%"/>
	<br><br>
</div>



