// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require cleditor
//= require jquery_ujs
//= require_tree .

var map;
var markersArray = [];
var def_image = '/assets/default.png';

  function sitesmap() {
    var latlng = new google.maps.LatLng(40.420088,  '-3.688810');
    var site_name = document.getElementById( 'site_name' ).value;
    var site_lat = document.getElementById( 'site_latitude' ).value;
    var site_lon = document.getElementById( 'site_longitude' ).value;
    var site_zoom = document.getElementById( 'site_zoom' ).value;
    var site_image = document.getElementById( 'site_image_url' ).value;
    if(site_lat != ''){
      latlng = new google.maps.LatLng(site_lat,  site_lon);
    }
    if(site_image == ''){
      site_image = def_image;
    }
    var myOptions = {
      zoom: 8,
      center: latlng,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    map = new google.maps.Map(document.getElementById("sitesmap_canvas"), myOptions);

    if(site_zoom != ''){
      map.setZoom(parseInt(site_zoom));
    }

    google.maps.event.addListener(map, 'click', function(event) {

      var myLatLng = event.latLng;
      
      document.getElementById( 'site_latitude' ).value =  myLatLng.lat();
      document.getElementById( 'site_longitude' ).value = myLatLng.lng();
      document.getElementById( 'site_zoom' ).value =  map.getZoom();
      setOneMarker(myLatLng, site_name, site_image);

    });

    setOneMarker(latlng, site_name, site_image);
  }

function setOneMarker(myLatLng, site_name, site_image){

      var image = new google.maps.MarkerImage(site_image, null, null, 
                      new google.maps.Point(20, 20), new google.maps.Size(40, 40));
      var shadow = new google.maps.MarkerImage('/assets/shadow.png',
      new google.maps.Size(80, 80),
      new google.maps.Point(0,0),
      new google.maps.Point(30,30));

      
      clearOverlays();
      var marker = new google.maps.Marker({
        position: myLatLng, 
        map: map,
        title: site_name,
        icon: image,
        shadow: shadow
      });
      
      markersArray.push(marker);

}

  function travelmap() {
    var latlng = new google.maps.LatLng(40.420088,  -3.688810);
    var myOptions = {
      zoom: 8,
      center: latlng,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    map = new google.maps.Map(document.getElementById("travelmap_canvas"), myOptions);

  }

function setMultipleMarker(site_lat, site_lon, site_name, site_image){

      var latlng = new google.maps.LatLng(site_lat, site_lon);

      if(site_image == ''){
      site_image = def_image;
      }

      var image = new google.maps.MarkerImage(site_image, null, null, 
                      new google.maps.Point(20, 20), new google.maps.Size(40, 40));

      var shadow = new google.maps.MarkerImage('/assets/shadow.png',
      new google.maps.Size(80, 80),
      new google.maps.Point(0,0),
      new google.maps.Point(30,30));

      var marker = new google.maps.Marker({
        position: latlng, 
        map: map,
        title: site_name,
        icon: image,
        shadow: shadow
      });
      
      markersArray.push(marker);
      fitBounds();

}

function clearOverlays() {
  if (markersArray) {
    for (i in markersArray) {
      markersArray[i].setMap(null);
    }
    markersArray.length = 0;
  }
}

function fitBounds() {
  if (markersArray) {
    var bounds = new google.maps.LatLngBounds();
      for(var i in markersArray) {
        bounds.extend(markersArray[i].getPosition());
      }
    map.fitBounds(bounds);
  }
}

function setMarkers(sitesArray){

  if (sitesArray) {

      for(var i in sitesArray) {
        var site_lat = sitesArray[i][0];
	var site_lon = sitesArray[i][1];
	var site_name = sitesArray[i][2];
	var site_image = sitesArray[i][3];
        setMultipleMarker(site_lat, site_lon, site_name, site_image)
      }
  }
}
