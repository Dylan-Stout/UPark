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
      
	marker2.addListener('click', function() {
        infowindow2.open(map, marker2);
	});
	
	marker3.addListener('click', function() {
        infowindow3.open(map, marker3);
	});
	
	marker4.addListener('click', function() {
        infowindow4.open(map, marker4);
	});
	
	marker5.addListener('click', function() {
        infowindow5.open(map, marker5);
	});
	
	marker6.addListener('click', function() {
        infowindow6.open(map, marker6);
	});
	
	marker7.addListener('click', function() {
        infowindow7.open(map, marker7);
	});
	
	function toggleBounce() {
		  if (marker.getAnimation() !== null) {
		    marker.setAnimation(null);
		    marker2.setAnimation(null);
		    marker3.setAnimation(null);
		    marker4.setAnimation(null);
		    marker5.setAnimation(null);
		    marker6.setAnimation(null);
		    marker7.setAnimation(null);
		  } else {
		    marker.setAnimation(google.maps.Animation.BOUNCE);
		    marker2.setAnimation(google.maps.Animation.BOUNCE);
		    marker3.setAnimation(google.maps.Animation.BOUNCE);
		    marker4.setAnimation(google.maps.Animation.BOUNCE);
		    marker5.setAnimation(google.maps.Animation.BOUNCE);
		    marker6.setAnimation(google.maps.Animation.BOUNCE);
		    marker7.setAnimation(google.maps.Animation.BOUNCE);
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
    
    var contentString2 = '<div id="content">'+
    '<div id="siteNotice">'+
    '</div>'+
    '<h1 id="firstHeading" class="firstHeading">Toms Event Center </h1>'+
    '<div id="bodyContent">'+
    '<p><b>This area has (2) parking lots</b>, view them <button type="button" class="button button2" id="u-lot-button" style="vertical-align:middle"><span>HERE</span></button> ' +
'</p>'+
    '</div>'+
    '</div> ';
    
    var contentString3 = '<div id="content">'+
    '<div id="siteNotice">'+
    '</div>'+
    '<h1 id="firstHeading" class="firstHeading">Pokemon Gym</h1>'+
    '<div id="bodyContent">'+
    '<p><b>This area 1 parking lot</b>, view them <button type="button" class="button button2" id="u-lot-button" style="vertical-align:middle"><span>HERE</span></button> ' +
'</p>'+
    '</div>'+
    '</div> ';
    
    
    var contentString4 = '<div id="content">'+
    '<div id="siteNotice">'+
    '</div>'+
    '<h1 id="firstHeading" class="firstHeading">HackTheU - Secret Facility</h1>'+
    '<div id="bodyContent">'+
    '<p><b>This area has multiple parking lots</b>, view them <button type="button" class="button button2" id="u-lot-button" style="vertical-align:middle"><span>HERE</span></button> ' +
'</p>'+
    '</div>'+
    '</div> ';
    
    
    var contentString5 = '<div id="content">'+
    '<div id="siteNotice">'+
    '</div>'+
    '<h1 id="firstHeading" class="firstHeading">Comic Con X</h1>'+
    '<div id="bodyContent">'+
    '<p><b>This area has multiple parking lots</b>, view them <button type="button" class="button button2" id="u-lot-button" style="vertical-align:middle"><span>HERE</span></button> ' +
'</p>'+
    '</div>'+
    '</div> ';
    
    
    var contentString6 = '<div id="content">'+
    '<div id="siteNotice">'+
    '</div>'+
    '<h1 id="firstHeading" class="firstHeading">College Campus</h1>'+
    '<div id="bodyContent">'+
    '<p><b>This area has multiple parking lots</b>, view them <button type="button" class="button button2" id="u-lot-button" style="vertical-align:middle"><span>HERE</span></button> ' +
'</p>'+
    '</div>'+
    '</div> ';
    
    
    var contentString7 = '<div id="content">'+
    '<div id="siteNotice">'+
    '</div>'+
    '<h1 id="firstHeading" class="firstHeading">True Nightmare Gaming Center</h1>'+
    '<div id="bodyContent">'+
    '<p><b>This area has multiple parking lots</b>, view them <button type="button" class="button button2" id="u-lot-button" style="vertical-align:middle"><span>HERE</span></button> ' +
'</p>'+
    '</div>'+
    '</div> ';

	var infowindow = new google.maps.InfoWindow({
	  content: contentString
	}); 
	
	var infowindow2 = new google.maps.InfoWindow({
		  content: contentString2
		}); 
	
	var infowindow3 = new google.maps.InfoWindow({
		  content: contentString3
		}); 
	
	var infowindow4 = new google.maps.InfoWindow({
		  content: contentString4
		}); 
	
	var infowindow5 = new google.maps.InfoWindow({
		  content: contentString5
		}); 
	
	var infowindow6 = new google.maps.InfoWindow({
		  content: contentString6
		}); 
	
	var infowindow7 = new google.maps.InfoWindow({
		  content: contentString7
		}); 
	
}



</script>
 <script async defer src="https://maps.googleapis.com/maps/api/js?key=&callback=initMap"
  type="text/javascript"></script>
  
  <script>
  
 
 

</script>


</body>
</html>
