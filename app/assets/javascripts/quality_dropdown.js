$(document).ready(function(){

  getQualities()
  
});

function getQualities() {
  $.ajax({
    url: "/api/v1/quality",
    dataType: 'json',
    method: 'GET',
    success: function(success){
      appendQualityDropdown(success)      
    },
    error: function(error){
      console.log(error)
    }
  });
}

function appendQualityDropdown(qualities){
  $("#quality_dropdown").empty()
  $(qualities).each(function(index, qualityData) {
    addQualityToDropdown(qualityData)
  });
}

function addQualityToDropdown(qualityData){
  $("#quality_dropdown").append(htmlOption(qualityData))
}

function htmlOption(qualityData){
  if (qualityData.description == "swill"){
    return ("<option selected='selected' value='" + qualityData.id + "'>" + 
              qualityData.description + 
            "</option>")
  } else {
    return ("<option value='" + qualityData.id + "'>" + 
              qualityData.description + 
            "</option>")
  }
}