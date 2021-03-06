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

  $( "#contactPageForm" ).submit(function( event ) {
    event.preventDefault();
    let contactPageInputs = {};
    contactPageInputs.title = $("#contactTitleInput").val();
    contactPageInputs.about = $("#contactAboutInput").val();
    contactPageInputs.seo_keywords = $("#contactSeoKeywordInput").val();
    contactPageInputs.seo_description = $("#contactSeoDescriptionInput").val();
    sendFormHandler(contactPageInputs, 'update_contact_page');
  });

  $( "#cvPageForm" ).submit(function( event ) {
    event.preventDefault();
    let cvPageInputs = {};
    cvPageInputs.doc = $("#cvDocInput").val();
    cvPageInputs.seo_keywords = $("#cvSeoKeywordInput").val();
    cvPageInputs.seo_description = $("#cvSeoDescriptionInput").val();
    sendFormHandler(cvPageInputs, 'update_cv_page');
  });

  $( "#teachingPageForm" ).submit(function( event ) {
    event.preventDefault();
    let teachingPageInputs = {};
    teachingPageInputs.title = $("#teachingTitleInput").val();
    teachingPageInputs.seo_keywords = $("#teachingSeoKeywordInput").val();
    teachingPageInputs.seo_description = $("#teachingSeoDescriptionInput").val();
    sendFormHandler(teachingPageInputs, 'update_teaching_page');
  });

  $( "#servicePageForm" ).submit(function( event ) {
    event.preventDefault();
    let servicePageInputs = {};
    servicePageInputs.title = $("#serviceTitleInput").val();
    servicePageInputs.seo_keywords = $("#serviceSeoKeywordInput").val();
    servicePageInputs.seo_description = $("#serviceSeoDescriptionInput").val();
    sendFormHandler(servicePageInputs, 'update_service_page');
  });

  $( "#blogPageForm" ).submit(function( event ) {
    event.preventDefault();
    let blogPageInputs = {};
    blogPageInputs.title = $("#blogTitleInput").val();
    blogPageInputs.seo_keywords = $("#blogSeoKeywordInput").val();
    blogPageInputs.seo_description = $("#blogSeoDescriptionInput").val();
    sendFormHandler(blogPageInputs, 'update_blog_page');
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