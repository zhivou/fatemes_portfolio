require 'test_helper'

class ResearchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @research = researches(:one)
  end

  test "should get index" do
    get researches_url
    assert_response :success
  end

  test "should get new" do
    get new_research_url
    assert_response :success
  end

  test "should create research" do
    assert_difference('Research.count') do
      post researches_url, params: { research: { title: @research.title } }
    end

    assert_redirected_to research_url(Research.last)
  end

  test "should show research" do
    get research_url(@research)
    assert_response :success
  end

  test "should get edit" do
    get edit_research_url(@research)
    assert_response :success
  end

  test "should update research" do
    patch research_url(@research), params: { research: { title: @research.title } }
    assert_redirected_to research_url(@research)
  end

  test "should destroy research" do
    assert_difference('Research.count', -1) do
      delete research_url(@research)
    end

    assert_redirected_to researches_url
  end
end
