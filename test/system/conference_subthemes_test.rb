require "application_system_test_case"

class ConferenceSubthemesTest < ApplicationSystemTestCase
  setup do
    @conference_subtheme = conference_subthemes(:one)
  end

  test "visiting the index" do
    visit conference_subthemes_url
    assert_selector "h1", text: "Conference Subthemes"
  end

  test "creating a Conference subtheme" do
    visit conference_subthemes_url
    click_on "New Conference Subtheme"

    fill_in "Conference theme", with: @conference_subtheme.conference_theme_id
    fill_in "Name", with: @conference_subtheme.name
    click_on "Create Conference subtheme"

    assert_text "Conference subtheme was successfully created"
    click_on "Back"
  end

  test "updating a Conference subtheme" do
    visit conference_subthemes_url
    click_on "Edit", match: :first

    fill_in "Conference theme", with: @conference_subtheme.conference_theme_id
    fill_in "Name", with: @conference_subtheme.name
    click_on "Update Conference subtheme"

    assert_text "Conference subtheme was successfully updated"
    click_on "Back"
  end

  test "destroying a Conference subtheme" do
    visit conference_subthemes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Conference subtheme was successfully destroyed"
  end
end
