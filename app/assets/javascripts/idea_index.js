function getIdeas() {
  $.getJSON('/api/v1/idea').then(function (data) {
    // console.log(data[0])
  })
}

function renderIdea(idea) {
  return $('<tr><td>' + idea.title + '</td><td>' + idea.body + '</td><td>' + idea.description + '</td></tr>')
}

$(document).ready(function(){
  getIdeas()
})