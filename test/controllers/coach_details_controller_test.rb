require 'test_helper'

class CoachDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coach_detail = coach_details(:one)
  end

  test "should get index" do
    get coach_details_url
    assert_response :success
  end

  test "should get new" do
    get new_coach_detail_url
    assert_response :success
  end

  test "should create coach_detail" do
    assert_difference('CoachDetail.count') do
      post coach_details_url, params: { coach_detail: { age: @coach_detail.age, country: @coach_detail.country, email: @coach_detail.email, name: @coach_detail.name, sport: @coach_detail.sport, sport_id: @coach_detail.sport_id } }
    end

    assert_redirected_to coach_detail_url(CoachDetail.last)
  end

  test "should show coach_detail" do
    get coach_detail_url(@coach_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_coach_detail_url(@coach_detail)
    assert_response :success
  end

  test "should update coach_detail" do
    patch coach_detail_url(@coach_detail), params: { coach_detail: { age: @coach_detail.age, country: @coach_detail.country, email: @coach_detail.email, name: @coach_detail.name, sport: @coach_detail.sport, sport_id: @coach_detail.sport_id } }
    assert_redirected_to coach_detail_url(@coach_detail)
  end

  test "should destroy coach_detail" do
    assert_difference('CoachDetail.count', -1) do
      delete coach_detail_url(@coach_detail)
    end

    assert_redirected_to coach_details_url
  end
end
