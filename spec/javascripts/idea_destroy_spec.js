// describe('IdeaController Destroy', function(){

//   var destroyData

//   beforeEach(function (done){
//     MagicLamp.load('idea/home');
//     $.getJSON('/api/v1/idea').then(function (data) {
//       destroyData = data;
//       done();
//     });
//   });

//   it('deletes an idea when the destroy path is called with AJAX', function (done) {
//     var id = destroyData[0]['id']
//     var newData
//     $.ajax({
//             url: '/api/v1/idea/' + id,
//             type: 'DELETE',
//           })
//             .done(function(){
//               // $.getJSON('/api/v1/idea').then(function (data) {
//               // console.log(data[0]['id'])
//               // newData = data;
//               // assert.equal(newData.length, testData.length - 1)
//               done();
//             });
//   });

// });