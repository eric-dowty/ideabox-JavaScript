$(document).ready(function(){

  $("#new_idea_button").click(function(){
    var title = $("#new_title_input").val()
    var body  = $("#new_body_input").val() 
    var quality = $("#quality_dropdown").find(":selected").val()
    if (title == "" || body == ""){
      userNotice("All fields must be filled out")
    } else {
      createIdea(title, body, quality)
    }
  });

});

function createIdea(title, body, quality){

  $.ajax({
    url: "/api/v1/idea",
    dataType: 'json',
    method: 'POST',
    data: { idea: {title: title, body: body, quality_id: quality} }
  }).done(function() {
    getIdeas()
    resetNewIdeaForm()
  });

}

function resetNewIdeaForm(){
  $("#new_title_input").val("")
  $("#new_body_input").val("") 
  getQualities()
}