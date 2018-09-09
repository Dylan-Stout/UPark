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
	    center:new google.maps.LatLng(40.765308,-111.841477),
	    zoom:10,
	};
	var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
	var marker = new google.maps.Marker({
	    position: {lat: 40.765308, lng: -111.841477},
	    map: map,
	    animation: google.maps.Animation.DROP,
	    title: 'University Of Utah'
	  });
	
	var marker2 = new google.maps.Marker({
	    position: {lat: 40.844672, lng: -111.929701},
	    map: map,
	    animation: google.maps.Animation.DROP,
	    title: 'Marker2'
	  });
	
	var marker3 = new google.maps.Marker({
	    position: {lat: 40.733590, lng: -111.940452},
	    map: map,
	    animation: google.maps.Animation.DROP,
	    title: 'MArker 3'
	  });
	
	var marker4 = new google.maps.Marker({
	    position: {lat: 40.779294, lng: -112.056125},
	    map: map,
	    animation: google.maps.Animation.DROP,
	    title: 'Marker 4'
	  });
	
	var marker5 = new google.maps.Marker({
	    position: {lat: 40.622256, lng: -111.949380},
	    map: map,
	    animation: google.maps.Animation.DROP,
	    title: 'Marker 4'
	  });
	
	var marker6 = new google.maps.Marker({
	    position: {lat: 40.676050, lng: -112.071613},
	    map: map,
	    animation: google.maps.Animation.DROP,
	    title: 'Marker 4'
	  });
	
	var marker7 = new google.maps.Marker({
	    position: {lat: 40.667653, lng: -111.721865},
	    map: map,
	    animation: google.maps.Animation.DROP,
	    title: 'Marker 4'
	  });
	
	 animation: google.maps.Animation.DROP,
/* 	 marker.addListener('click', toggleBounce); */
	marker.addListener('click', function() {
        infowindow.open(map, marker);
        $("#u-lot-button").click(function(){
	    	window.location = "http://localhost:8080/lotDetails";
	    });
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
    '<h1 id="firstHeading" class="firstHeading">University of Utah</h1>'+
    '<div id="bodyContent">'+
    '<p><b>This area has multiple parking lots</b>, view them <button type="button" class="button button2" id="u-lot-button" style="vertical-align:middle"><span>HERE</span></button> ' +
'</p>'+
    '</div>'+
    '</div> ';

	var infowindow = new google.maps.InfoWindow({
	  content: contentString
	}); 
	
}



</script>
 <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCVqZ_Lf9uXb_35jw5jBiWndrO0C592Luc&callback=initMap"
  type="text/javascript"></script>
  
  <script>
  
 
 

</script>


</body>
</html>