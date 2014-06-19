$(document).ready(function() {
  return $("#long").on("ajax:success", function(e, data, status, xhr) {
    return $(".url_form").append(xhr.responseText);
  }).on("ajax:error", function(e, xhr, status, error) {
    return $(".url_form").append("<p>ERROR</p>");
  });
});