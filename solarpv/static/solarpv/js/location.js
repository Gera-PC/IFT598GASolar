function getLocation() {
  if (navigator.geolocation) {
	navigator.geolocation.getCurrentPosition(showLocation);
  } else {
	alert("Geolocation is not supported by this browser.");
  }
}

function showLocation(position) {
	var latitude = position.coords.latitude;
	var longitude = position.coords.longitude;
	
	var url = "https://maps.googleapis.com/maps/api/staticmap?center="
	+ latitude + "," + longitude + "&zoom=14&size=250x200&sensor=false&key=AIzaSyALbX0TUrW8R-1jyn9l7y6hROWsFp5H2Bk";
	
	document.getElementById("map").innerHTML = "<img src=" + url + ">";
}