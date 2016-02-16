// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require owl.carousel
//= require_tree .
//= require bootstrap-sprockets

var ready;
ready = function() {
  $(".owl-carousel").owlCarousel({
    navigation: true,
    paginationSpeed : 1000,
    goToFirstSpeed : 2000,
    singleItem : true,
    autoHeight : true
  });

  var $ppc = $('.progress-pie-chart'),
  percent = parseFloat($ppc.data('percent')),
  s_percent = parseFloat($ppc.data('start')),
  start = 360*s_percent/100,
  deg = 360*percent/100;
  if (percent > 50) {
    $ppc.addClass('gt-50');
  }
  $('.ppc-progress-fill').css('transform','rotate('+ deg +'deg)');
  $('.ppc-percents span').html(percent+'%');

}


function myFunction() {
  var content = marked($("#text-area").val());
  $("#preview").html(content);
}

$(document).ready(ready);
$(document).on('page:load', ready);
