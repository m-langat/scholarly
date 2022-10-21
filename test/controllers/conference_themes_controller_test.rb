require "test_helper"

class ConferenceThemesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @conference_theme = conference_themes(:one)
  end

  test "should get index" do
    get conference_themes_url
    assert_response :success
  end

  test "should get new" do
    get new_conference_theme_url
    assert_response :success
  end

  test "should create conference_theme" do
    assert_difference('ConferenceTheme.count') do
      post conference_themes_url, params: { conference_theme: { name: @conference_theme.name } }
    end

    assert_redirected_to conference_theme_url(ConferenceTheme.last)
  end

  test "should show conference_theme" do
    get conference_theme_url(@conference_theme)
    assert_response :success
  end

  test "should get edit" do
    get edit_conference_theme_url(@conference_theme)
    assert_response :success
  end

  test "should update conference_theme" do
    patch conference_theme_url(@conference_theme), params: { conference_theme: { name: @conference_theme.name } }
    assert_redirected_to conference_theme_url(@conference_theme)
  end

  test "should destroy conference_theme" do
    assert_difference('ConferenceTheme.count', -1) do
      delete conference_theme_url(@conference_theme)
    end

    assert_redirected_to conference_themes_url
  end
end
