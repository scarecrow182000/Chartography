$(window).ready(function(){

  var lat = 35
  var long = 10
  var zoom = 2
  var map = L.map('map').setView([lat, long], zoom);

  L.tileLayer('http://{s}.tiles.mapbox.com/v3/scarecrow182000.j39doj8o/{z}/{x}/{y}.png', {
      attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://mapbox.com">Mapbox</a>',
      maxZoom: 18
  }).addTo(map);

  L.marker([ lat, long]).addTo(map)
  .bindPopup('CONCERT HEEAR @ THIS VENU!!!!1!!')
  .openPopup();

});
