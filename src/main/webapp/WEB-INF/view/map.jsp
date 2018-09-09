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

</head>	
<body>
 <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Brand</a>
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
      <a class="navbar-brand" href="#">Brand</a>
    </div>
<script>
function initMap() {
	var mapProp= {
	    center:new google.maps.LatLng(40.7608,-111.8910),
	    zoom:10,
	};
	var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
}

</script>
 <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCVqZ_Lf9uXb_35jw5jBiWndrO0C592Luc&callback=initMap"
  type="text/javascript"></script>


</body>
</html>