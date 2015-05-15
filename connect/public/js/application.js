$(document).ready(function() {

  $('#connect-with-someone-button').click(function(event) {
    event.preventDefault();

    var request = $.ajax({
      url: $(this).attr('href')
    });

    request.done(function(response) {
      $('#landing-page').replaceWith(response);
    });

  });

  // $(document).on('submit', 'form',function(event) {
  //   event.preventDefault();

  //   var url = $(this).attr('action');
  //   var type = $(this).attr('method');
  //   var form = $(this).serialize();

  //   var request = $.ajax({
  //     url: url,
  //     type: type,
  //     data: form
  //   });

  //   request.done(function(response) {
  //     console.log(response)
  //   })

  // });


});






// $('#new-connection-form').replaceWith(response);
