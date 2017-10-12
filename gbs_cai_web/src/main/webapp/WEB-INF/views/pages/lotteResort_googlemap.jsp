<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div class="container">
<h4>Lotte Resort Sokcho</h4>
주소: 강원도 속초시 대포항길 186
    <div id="map" style="width:330px;height:400px;background:yellow"></div>
	<br><br>
</div>


<script>
      function initMap() {
        var myLatLng = {lat: 38.180452, lng: 128.610360};

        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 15,
          center: myLatLng
        });

        var marker = new google.maps.Marker({
          position: myLatLng,
          map: map,
          title: 'Hello World!'
        });
      }
</script>

<script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCNqMNorcbDu47mB2WtGo5znSkg7NC5cx0&callback=initMap">
</script>
