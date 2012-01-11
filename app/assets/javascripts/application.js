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


$(document).ready(displayPosition);

var map;

function displayPosition (){

   if(document.getElementById("map_canvas")==null)
     return;
  
  var mylat = 40.43333;
  var mylong = -3.6833333;
  
  // Store my position (“y=mylat”, “x=mylong”) in variable “lating”
  var latlng = new google.maps.LatLng(mylat, mylong);
  
  //var latlng2 = new google.maps.LatLng(0, 0);
  // Define my Google Maps options in variable “myOptions”
  var myOptions = {
    zoom: 1,
    // Define scale
    center: latlng,
    // Define map center
    mapTypeId: google.maps.MapTypeId.ROADMAP // tipo Roadmad, Satellite, Terrain, Hybrid
  };
  
 
  
  // Load Google Map according to “myOptions” in Canvas identified by “map_canvas”
  map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
  
//   // Add marker in Google Maps “map” in position defined by “lating”
//   var marker = new google.maps.Marker({
//     position: latlng,
//     map: map,
//     title:"Wooolaaass"
//   });
//alert(createMarker(32, 32, siteImages[0]));

  //colocaChinchetas();
 
}

function colocaChinchetas(){
  
  //alert('auch');
  
   for(i=0;i<latlongs.length;i++){
       
      var marker = new google.maps.Marker({
	position: latlongs[i],
	map: map,
	title:siteNames[i],
        icon: imagenesCanvasArray[i].toDataURL()
      });
      
    }
    //window.open(imagenesCanvasArray[0].toDataURL());
}

function colocaNuevaChinchetaDelFinal(){
    var marker = new google.maps.Marker({
          position: latlongs[latlongs.length-1],
          map: map,
          title:siteNames[siteNames.length-1],
          icon: imagenesCanvasArray[imagenesCanvasArray.length-1].toDataURL()
        });
}

function errorPos(pos){alert('Error');}

//Colocar posicion
function colocaPos(pos){
  //alert('Guay');
  $('.new_site #site_latitude').val(pos.coords.latitude);
  $('.new_site #site_longitude').val(pos.coords.longitude);
}

//Ponemos valores por defecto y segun posicion, si es que debemos.
$(function() {
    
  if(($('.new_site #site_zoom').size()==0)){ //Averigua si estamos en new_site
	return; //Si no estamos en new_site, no se hace nada
  } 
  $('.new_site #site_zoom').val('6.0');

  if(navigator.geolocation){
	navigator.geolocation.getCurrentPosition(colocaPos, errorPos);
  }else{
	alert('Error: Your navigator does not support geolocation');
  }
});

$('#new_selected').submit(function(){colocaChinchetas();});


function createMarker(width, height, img) {

  var canvas, context;
  
  radius=4;
  
  canvas = document.createElement("canvas");
  canvas.width = width;
  canvas.height = height;

  context = canvas.getContext("2d");

  //context.clearRect(0,0,width,height);

  // border is black
//  context.strokeStyle = "rgba(0,0,0,1)";
//
//  context.beginPath();
//  context.moveTo(radius, 0);
//  context.lineTo(width - radius, 0);
//  context.quadraticCurveTo(width, 0, width, radius);
//  context.lineTo(width, height - radius);
//  context.quadraticCurveTo(width, height, width - radius, height);
//  context.lineTo(radius, height);
//  context.quadraticCurveTo(0, height, 0, height - radius);
//  context.lineTo(0, radius);
//  context.quadraticCurveTo(0, 0, radius, 0);
//  context.closePath();
//  
//  var img = new Image();
//  img.src=imageURL;
// //Esperamos imagen
      
  
 
  
  
  
  
  context.drawImage(img, '1px', '1px', '31px', '31px');
  
  //context.fill();
  
  //context.stroke();

  return canvas.toDataURL();

}

//$(document).ready(function(){
//  alert(createMarker(32,32,'http://jonkepa.files.wordpress.com/2011/03/avioncito.jpg'));
//});