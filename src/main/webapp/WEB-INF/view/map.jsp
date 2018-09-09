<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head> 
    <title>UPark - Find a Parking Spot</title> 
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

 <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAXp2evKNSHQ2WEC5BkdULvuUF-2wu4xtg&callback=initMap"
  type="text/javascript"></script>
</head>
<body>
<div id="googleMap" style="width:100%;height:400px;"></div>

<script>
function myMap() {
var mapProp= {
    center:new google.maps.LatLng(51.508742,-0.120850),
    zoom:5,
};
var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
}
</script>



</body>
</html>