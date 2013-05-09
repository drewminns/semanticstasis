$(document).ready(function(){

  window.fbAsyncInit = function() {
    FB.init({
      appId : '#FACEBOOK_APP_ID',
      channelUrl : window.location.protocol + '//' + window.location.hostname + '/channel.html',
      status : true,
      cookie : true,
      xfbml : true,
      oauth : true
    });
    FB.Canvas.setSize({height:800});
    FB.Canvas.setAutoGrow();
    FB.Canvas.scrollTo(0,0);
    $(document).trigger("facebook:ready");
  }

  $(document).bind("facebook:ready", function(){
    if ($("#share_container").length > 0) {
      share();
    }
  });
});
