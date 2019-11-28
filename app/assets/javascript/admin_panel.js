function prepareCSRFToken() {
  return {'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')}
}

$( document ).ready(function() {
  $( "#homePageForm" ).submit(function( event ) {
    event.preventDefault();
    let homePageInputs = {};
    homePageInputs.name = $("#nameInput").val();
    homePageInputs.about = $("#bioInput").val();
    homePageInputs.seo_keywords = $("#seoKeywordInput").val();
    homePageInputs.seo_description = $("#seoDescriptionInput").val();
    sendFormHandler(homePageInputs);
  });

  function sendFormHandler(inputs) {
    let base_url = gon.base_url;

    $.ajax({
      url: base_url + '/admin_panel/update_home_page',
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