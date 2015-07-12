describe('IdeaController Index', function() {

  var testData

  beforeEach(function(done){
    MagicLamp.load('idea/home');
    $.getJSON('/api/v1/idea').then(function(data){
      testData = data;
      done();
    });
  });

  it('get all the ideas from the index path with AJAX', function() {
    assert.equal(testData.length, 3);
  });

  it('can render an idea in html', function (done){
    id = testData[0]['id']
    $.getJSON('/api/v1/idea/' + id ).then(function (data){
      renderedIdea = renderIdea(data)
      assert(renderedIdea instanceof jQuery);
      expectedHTML = '<td>third</td><td>the third idea</td><td>undefined</td>'
      assert.equal(renderedIdea.html(), expectedHTML)
      done();
    });
  });
   
});
