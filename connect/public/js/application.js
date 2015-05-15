$(document).ready(function() {

  $('#connect-with-someone-button').click(function(event) {
    event.preventDefault()

    request = $.ajax({
      url: $(this).attr('href')
    })

    request.done(function(response) {
      console.log(response)

    })

  })


});
