$(document).bind("mobileinit", function(){
  $.mobile.ajaxEnabled = false;
  $('a[href="' + window.location.pathname + '"]').addClass('ui-btn-active');
});
