$(function(){

  let map
  let geocoder

  window.onload = function(){
    function initMap(){
      if ( $('#showMap').size()) {
        showlat = gon.showlat
        showlon = gon.showlon
        geocoder = new google.maps.Geocoder()
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: showlat, lng: showlon},
          zoom: 14,
        });
        marker = new google.maps.Marker({
          position:  {lat: showlat, lng: showlon},
          map: map
        });
      } else {
        geocoder = new google.maps.Geocoder()
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: 35.6803997, lng:139.7690174},
          zoom: 14,
        });
        marker = new google.maps.Marker({
          position:  {lat: 35.6803997, lng:139.7690174},
          map: map
        });
      }
    }
    initMap();
  };

  $('#mapSearchBtn').on('click', function(e){
    e.preventDefault()
    // 入力を取得
    let inputAddress = $('#address').val();
    // geocodingしたあとmapを移動
    geocoder.geocode( { 'address': inputAddress}, function(results, status) {
      if (status == 'OK') {
        map.setCenter(results[0].geometry.location);
        var marker = new google.maps.Marker({
            map: map,
            position: results[0].geometry.location
        });
        $('#mapLat').val(results[0].geometry.location.lat());
        $('#mapLng').val(results[0].geometry.location.lng());
      } else {
        alert('該当する結果がありませんでした：' + status);
      }
    })
  });
});