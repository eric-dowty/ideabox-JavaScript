describe("idea_table", function() {

  it("returns html row data", function() {
    var data = {id: "1", title: "first idea", body: "the only idea" , quality: "swill" }
    result = htmlRow(data)
    expected = "<tr id='index1'><td id='idea_row_title'>first idea</td><td id='idea_row_body'>the only idea</td><td id='idea_row_quality'>swill</td></tr>"
    expect(result).toEqual(expected)
  });

});