// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
$(document).ready(function() {
$('.delete_viaje').bind('ajax:success', function() {
$(this).closest('tr').fadeOut();
});
});

$(document).ready(function() {
$('.add_viaje').bind('ajax:success', function() {
$(this).closest('tr').fadeOut("fast");
$(this).closest('tr').fadeIn();
});
});

$(document).ready(function() {
$('.add_viaje_show_site').bind('ajax:success', function() {
$("#notice").replaceWith("<p id='notice'>Sitio añadido correctamente a viaje.</p>");
$("#notice").css('display', 'show');
$("#notice").fadeOut("fast");
$("#notice").fadeIn();
});
});
