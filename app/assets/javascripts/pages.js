$(document).ready(function() {
	if ($('.map-canvas').length <= 0) {
		return;
	}

	var mapCanvas = document.getElementsByClassName('map-canvas')[0];

	var mapOptions = {
		center: new google.maps.LatLng(60.1725, 24.9328),
		zoom: 12,
		mapTypeId: google.maps.MapTypeId.ROADMAP
	};

	var map = new google.maps.Map(mapCanvas, mapOptions);

	var marker = new google.maps.Marker({
		position: { lat: 60.1725, lng: 24.9328 },
		map: map, 
		label: "Parliament House",
	});
});