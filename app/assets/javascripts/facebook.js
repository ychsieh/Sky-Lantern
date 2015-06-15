 window.fbAsyncInit = function() {
    FB.init({
      appId      : '358692794194572', // App ID
      channelUrl : 'localhost/sl/channel.html', // Channel File
      status     : true, // check login status
      cookie     : true, // enable cookies to allow the server to access the session
      xfbml      : true  // parse XFBML
    });

    $('li.FacebookLogout').on('click',function(){
        FB.logout(function(response) {
                location.reload();
        });
    });


    FB.login(function(response) {
          if (response.authResponse) {
              console.log('Connect to Facebook successfully   ˊ_>ˋ   ');
              FB.api('/me', function(user) {
                  if (user) {
                      var UserName = document.getElementById('UserName');
                      UserName.innerHTML = user.name
                      var UserPhoto = document.getElementById('UserPhoto');
                      UserPhoto.src = 'https://graph.facebook.com/' + user.id + '/picture';
                  }
              });
              FB.api('/me/friends', function(friends) {
                  if (friends) {
                        var i=0;
                       for(i=0;i<friends.data.length;i=i+1){
                              $('<div class="friend">\
                                      <img src=https://graph.facebook.com/' + friends.data[i].id + '/picture />\
                                      <span>' + friends.data[i].name + '</span> \
                                 </div>').appendTo('div.friendData');
                        }
                  }
              });
          } else {
                console.log('Can not connect to Facebook  >< ');
                var UserName = document.getElementById('UserName');
                UserName.innerHTML = "Reload to Login";
                 var UserPhoto = document.getElementById('UserPhoto');
                 UserPhoto.src = 'img/yaoming.jpg';
          }
    });
};


  // Load the SDK Asynchronously
  (function(d){
     var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement('script'); js.id = id; js.async = true;
     js.src = "//connect.facebook.net/en_US/all.js";
     ref.parentNode.insertBefore(js, ref);
   }(document));