var shortened = {
  bindEventListeners: function(){
    $('#long').on("ajax:success", $('#long').append('HELLO'))
  }
};

// <%= render partial: "show", locals: { url: @url } %>