$(document).ready(function(){


  $("#login-button").click(function(event){
    event.preventDefault();

    var button = $(this)

      console.log(button)


      var request = $.ajax({
        url: '/sessions/new'
      })

      request.success(function(response){
        $(button).hide();
        $(".navbar").append(response);
      })
  })

  $(document).on("submit", "#login", function(event){
    event.preventDefault();

    var myData = $(this).serialize();

    var request = $.ajax({
      url: '/sessions',
      method: 'POST',
      data: myData
    })



    request.success(function(response){
      debugger;
      $("#login").hide();
      $("#sign-up").hide();
      $('#body-div').html(response);
      // $("#help").show();
      // $("#logout").show()
    });

  });







});
