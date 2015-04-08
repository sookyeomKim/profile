(function() {
  $(function() {
    $("#close_player").click(function(){
      $('#player-wrapper').attr("style","display:none");
        window.ytplayer.pauseVideo();
    });
    var makeVideoPlayer;
    $('.yt_preview').click(function() {
      $('#player-wrapper').attr("style","display:block");
      makeVideoPlayer($(this).data('uid'));
    });
    window.ytPlayerLoaded = false;
    $(window).bindWithDelay('resize', function() {
      var player;
      player = $('#ytPlayer');
      if (player.size() > 0) {
        player.height(player.width() / 1.777777777);
      }
    }, 500);
    makeVideoPlayer = function(video) {
      var player_wrapper;
      if (!window.ytPlayerLoaded) {

        player_wrapper = $('#player-wrapper');
        player_wrapper.append('<div id="ytPlayer"><p>Loading player...</p></div>');
        window.ytplayer = new YT.Player('ytPlayer', {
          width: '100%',
          height: player_wrapper.width() / 1.777777777,
          videoId: video,
          playerVars: {
            wmode: 'opaque',
            autoplay: 0,
            modestbranding: 1
          },
          events: {
            'onReady': function() {
              return window.ytPlayerLoaded = true;
            },
            'onError': function(errorCode) {
              return alert("We are sorry, but the following error occured: " + errorCode);
            }
          }
        });
      } else {
        window.ytplayer.loadVideoById(video);
        window.ytplayer.pauseVideo();
      }
    };
  });

}).call(this);
