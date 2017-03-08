jQuery(document).ready(function ($) {
    $("#openModal").click(function () {
        $("#my-dialog, #dialog-background").show();
    });

    $("#modal-background,#btn-close-modal").click(function () {
        $("#my-dialog, #dialog-background").css("display", "none");
    });

    var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
    var options = {//지도를 생성할 때 필요한 기본 옵션
        center: new daum.maps.LatLng(37.52546, 126.925453), //지도의 중심좌표.
        level: 3 //지도의 레벨(확대, 축소 정도)
    };

    var map = new daum.maps.Map(container, options); //지도 생성 및 객체 리턴
    var ps = new daum.maps.services.Places(); 
    path =[];
    polyline = [];
    ps.keywordSearch("콘래드호텔", searchCallback);
    ps.keywordSearch("IFC 3", searchCallback);
});

function searchCallback(status, result){
    var lat = result.places[0].latitude;
    var long = result.places[0].longitude;
    path.push(new daum.maps.LatLng(lat,long));
    git
    polyline = new daum.maps.Polyline({
        path: path, // 선을 구성하는 좌표배열 
        strokeWeight: 5, // 선의 두께 
        strokeColor: '#FFAE00', // 선의 색깔
        strokeOpacity: 0.7, // 선의 불투명도 
        strokeStyle: 'solid' // 선의 스타일
    });

}
   
