<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head> 
    <title>UPark - Find a Parking Spot</title> 
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="js/map.js"></script>
<link rel="stylesheet" href="css/style.css"/>

</head>	
<body>
 <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#" color:#F71818>UPark</a>
      <form class="navbar-form navbar-left" role="search">
  <div class="form-group">
    <input type="text" class="form-control" placeholder="Search">
  </div>
  <button type="submit" class="btn btn-default">Submit</button>
</form>
    </div>
<div id="googleMap" style="width:100%;height:90%;"></div>
 <div class="navbar-footer">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">UPark</a>
    </div>
<script>
function initMap() {
	var mapProp= {
	    center:new google.maps.LatLng(40.7608,-111.8910),
	    zoom:10,
	};
	var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
	var marker = new google.maps.Marker({
	    position: {lat: 40.7608, lng: -111.8910},
	    map: map,
	    animation: google.maps.Animation.DROP,
	    title: 'Union Parking Lot'
	  });
	 animation: google.maps.Animation.DROP,
/* 	 marker.addListener('click', toggleBounce); */
	marker.addListener('click', function() {
        infowindow.open(map, marker);
      });
	
	function toggleBounce() {
		  if (marker.getAnimation() !== null) {
		    marker.setAnimation(null);
		  } else {
		    marker.setAnimation(google.maps.Animation.BOUNCE);
		  }
		}
	
	var contentString = '<div id="content">'+
    '<div id="siteNotice">'+
    '</div>'+
    '<h1 id="firstHeading" class="firstHeading">University of Utah Parking</h1>'+
    '<div id="bodyContent">'+
    '<p><b>University of utah has several lots</b>, view them <button type="button" class="btn btn-default">HERE</button> ' +
'</p>'+
    '</div>'+
    '</div>';

	var infowindow = new google.maps.InfoWindow({
	  content: contentString
	});
	
}

</script>
 <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCVqZ_Lf9uXb_35jw5jBiWndrO0C592Luc&callback=initMap"
  type="text/javascript"></script>


</body>
</html>