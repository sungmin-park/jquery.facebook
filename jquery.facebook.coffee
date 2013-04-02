$.facebook = (id, {locale}={}, callback=->) ->                                  
  locale ?= 'en_US'                                                             
                                                                                
  window.fbAsyncInit = ->                                                       
    FB.init appId: id, status: true, cookie: true, xfbml: true                  
    FB.Canvas.setAutoGrow()
    FB.getLoginStatus callback                                                  

  $('body').append $('<div>').attr('id', 'fb-root')                             
  $('<script>').each ->                                                         
    @id = 'facebook-jssdk'                                                      
    @async = true                                                               
    @src = "//connect.facebook.net/#{locale}/all.js"                            
    $('head').append @
    