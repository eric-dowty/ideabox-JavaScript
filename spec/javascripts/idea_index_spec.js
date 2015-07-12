describe('IdeaController Index', function(){

  var index_data

  beforeEach(function (done){
    MagicLamp.load('idea/home');
    $.getJSON('/api/v1/idea').then(function (data) {
      index_data = data;
      done();
    });
  });

  it('get all the ideas from the index path with AJAX', function() {
    setTimeout(function(){
      assert.equal(index_data.length, 3);  
    }, 1500);
  });

  it('can render an idea in html', function (done){
    setTimeout(function(){
      id = index_data[0]['id']
      $.getJSON('/api/v1/idea/' + id ).then(function (data){
        renderedIdea = renderIdea(data)
        assert(renderedIdea instanceof jQuery);
        expectedHTML = '<td>third</td><td>the third idea</td><td>undefined</td>'
        assert.equal(renderedIdea.html(), expectedHTML)
        done();
      });
    }, 1500);
  });
   
});
