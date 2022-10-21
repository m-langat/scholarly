require "application_system_test_case"

class ConferenceThemesTest < ApplicationSystemTestCase
  setup do
    @conference_theme = conference_themes(:one)
  end

  test "visiting the index" do
    visit conference_themes_url
    assert_selector "h1", text: "Conference Themes"
  end

  test "creating a Conference theme" do
    visit conference_themes_url
    click_on "New Conference Theme"

    fill_in "Name", with: @conference_theme.name
    click_on "Create Conference theme"

    assert_text "Conference theme was successfully created"
    click_on "Back"
  end

  test "updating a Conference theme" do
    visit conference_themes_url
    click_on "Edit", match: :first

    fill_in "Name", with: @conference_theme.name
    click_on "Update Conference theme"

    assert_text "Conference theme was successfully updated"
    click_on "Back"
  end

  test "destroying a Conference theme" do
    visit conference_themes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Conference theme was successfully destroyed"
  end
end
