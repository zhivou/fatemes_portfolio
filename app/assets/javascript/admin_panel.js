$( document ).ready(function() {

  function prepareCSRFToken() {
    return {'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')}
  }

  $( "#homePageForm" ).submit(function( event ) {
    event.preventDefault();
    let homePageInputs = {};
    homePageInputs.name = $("#nameInput").val();
    homePageInputs.about = $("#bioInput").val();
    homePageInputs.seo_keywords = $("#seoKeywordInput").val();
    homePageInputs.seo_description = $("#seoDescriptionInput").val();
    sendFormHandler(homePageInputs, 'update_home_page');
  });

  $( "#researchPageForm" ).submit(function( event ) {
    event.preventDefault();
    let researchPageInputs = {};
    researchPageInputs.title = $("#researchTitleInput").val();
    researchPageInputs.about = $("#researchAboutInput").val();
    researchPageInputs.seo_keywords = $("#researchSeoKeywordInput").val();
    researchPageInputs.seo_description = $("#researchSeoDescriptionInput").val();
    sendFormHandler(researchPageInputs, 'update_research_page');
  });

  function sendFormHandler(inputs, apiPoint) {
    let base_url = gon.base_url;

    $.ajax({
      url: base_url + 'admin_panel/' + apiPoint,
      dataType: 'json',
      type: 'post',
      contentType: 'application/json',
      headers: prepareCSRFToken(),
      data: JSON.stringify(inputs),
      processData: false,
      success: function (data, textStatus, jQxhr) {
        $.notify("Home Page Updated!", "success");
      },
      error: function (xhr, textStatus, errorThrown) {
        $.notify(xhr.responseJSON.message, "warn");
      }
    })
  }
});