function renderIdea(idea) {
  return $('<tr><td>' + idea.title + '</td><td>' + idea.body + '</td><td>' + idea.quality + '</td></tr>')
}