require "test_helper"

class ConferenceSubthemesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @conference_subtheme = conference_subthemes(:one)
  end

  test "should get index" do
    get conference_subthemes_url
    assert_response :success
  end

  test "should get new" do
    get new_conference_subtheme_url
    assert_response :success
  end

  test "should create conference_subtheme" do
    assert_difference('ConferenceSubtheme.count') do
      post conference_subthemes_url, params: { conference_subtheme: { conference_theme_id: @conference_subtheme.conference_theme_id, name: @conference_subtheme.name } }
    end

    assert_redirected_to conference_subtheme_url(ConferenceSubtheme.last)
  end

  test "should show conference_subtheme" do
    get conference_subtheme_url(@conference_subtheme)
    assert_response :success
  end

  test "should get edit" do
    get edit_conference_subtheme_url(@conference_subtheme)
    assert_response :success
  end

  test "should update conference_subtheme" do
    patch conference_subtheme_url(@conference_subtheme), params: { conference_subtheme: { conference_theme_id: @conference_subtheme.conference_theme_id, name: @conference_subtheme.name } }
    assert_redirected_to conference_subtheme_url(@conference_subtheme)
  end

  test "should destroy conference_subtheme" do
    assert_difference('ConferenceSubtheme.count', -1) do
      delete conference_subtheme_url(@conference_subtheme)
    end

    assert_redirected_to conference_subthemes_url
  end
end
