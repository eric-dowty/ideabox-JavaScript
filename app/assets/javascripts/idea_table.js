$(document).ready(function(){

  function getIdeas() {
    $.ajax({
      url: "/api/v1/idea",
      dataType: 'json',
      method: 'GET',
      success: function(success){
        console.log(success)
      },
      error: function(error){
        console.log(error)
      }
    });
  }

  getIdeas()

});