// var shortened = {
//   bindEventListeners: function(){
//     $('#long').on("ajax:success", $('#long').append('HELLO'))
//   }
// };

// <%= render partial: "show", locals: { url: @url } %>



$(document).ready(function() {
  $("#long").on("ajax:success", function(e, data, status, xhr) {
    return $(".url_form").append(xhr.responseText);
  }).on("ajax:error", function(e, xhr, status, error) {
    return $(".url_form").append("<p>ERROR</p>");
  });
});