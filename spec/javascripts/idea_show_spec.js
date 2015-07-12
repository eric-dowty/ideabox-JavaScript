// describe('IdeaController Show', function(){

//   var latest_idea

//   beforeEach(function (done){
//     MagicLamp.load('idea/show');
//     $.getJSON('/api/v1/idea').then(function (data){
//       latest_idea = data
//       done();
//     });
//   });

//   it('can get an idea from the show path with an AJAX call', function(done){
//     id = latest_idea[0]['id']
//     title = latest_idea[0]['title']
//     $.getJSON('/api/v1/idea/' + id).then(function (data){
//       assert.equal(title, data['title'])
//       done();
//     });
//   });

// });