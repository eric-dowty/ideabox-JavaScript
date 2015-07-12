describe('IdeaController Destroy', function(){

  var testData

  beforeEach(function (done){
    MagicLamp.load('idea/home');
    $.getJSON('/api/v1/idea').then(function (data) {
      testData = data;
      done();
    });
  });

  it('deletes an idea when the destroy path is called with AJAX', function (done) {
    var id = testData[0]['id']
    var newData
    console.log("HERERE" + id)
    $.ajax({
            url: '/api/v1/idea/' + id,
            type: 'DELETE',
          })
            .done(function(){
              console.log("GOT HERE")
              // $.getJSON('/api/v1/idea').then(function (data) {
              // console.log(data[0]['id'])
              // newData = data;
              // assert.equal(newData.length, testData.length - 1)
              done();
            });
  });



});