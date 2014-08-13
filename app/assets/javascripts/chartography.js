$(window).ready(function(){

var map = L.map('map').setView([35, 10], 2);

L.tileLayer('http://{s}.tiles.mapbox.com/v3/scarecrow182000.j39doj8o/{z}/{x}/{y}.png', {
    attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://mapbox.com">Mapbox</a>',
    maxZoom: 18
}).addTo(map);

});
