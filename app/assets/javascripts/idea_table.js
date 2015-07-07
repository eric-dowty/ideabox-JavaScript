$(document).ready(function(){

  getIdeas()

});

function getIdeas() {
  $.ajax({
    url: "/api/v1/idea",
    dataType: 'json',
    method: 'GET',
    success: function(success){
      appendIdeasTable(success)      
    },
    error: function(error){
      console.log(error)
    }
  });
}

function clearIdeasTable(){
  $("#idea_table tbody").remove()
}

function appendIdeasTable(ideas){
  clearIdeasTable()
  $(ideas).each(function(index, rowData) {
    addRowToTable(rowData)
  });
}

function addRowToTable(rowData){
  $("#idea_table").append(htmlRow(rowData.table))
}

function htmlRow(data){
  return ("<tr id='index" + data.id +"'>" + 
            "<td id='idea_row_title'>" + data.title + "</td>" + 
            "<td id='idea_row_body'>" + data.body + "</td>" + 
            "<td id='idea_row_quality'>" + data.quality + "</td>" +
          "</tr>") 
}