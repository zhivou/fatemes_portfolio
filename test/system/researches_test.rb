require "application_system_test_case"

class ResearchesTest < ApplicationSystemTestCase
  setup do
    @research = researches(:one)
  end

  test "visiting the index" do
    visit researches_url
    assert_selector "h1", text: "Researches"
  end

  test "creating a Research" do
    visit researches_url
    click_on "New Research"

    fill_in "Title", with: @research.title
    click_on "Create Research"

    assert_text "Research was successfully created"
    click_on "Back"
  end

  test "updating a Research" do
    visit researches_url
    click_on "Edit", match: :first

    fill_in "Title", with: @research.title
    click_on "Update Research"

    assert_text "Research was successfully updated"
    click_on "Back"
  end

  test "destroying a Research" do
    visit researches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Research was successfully destroyed"
  end
end
