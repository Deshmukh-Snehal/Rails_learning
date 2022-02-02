require 'test_helper'

class CoachinfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coachinfo = coachinfos(:one)
  end

  test "should get index" do
    get coachinfos_url
    assert_response :success
  end

  test "should get new" do
    get new_coachinfo_url
    assert_response :success
  end

  test "should create coachinfo" do
    assert_difference('Coachinfo.count') do
      post coachinfos_url, params: { coachinfo: { age: @coachinfo.age, country: @coachinfo.country, name: @coachinfo.name, sportname: @coachinfo.sportname } }
    end

    assert_redirected_to coachinfo_url(Coachinfo.last)
  end

  test "should show coachinfo" do
    get coachinfo_url(@coachinfo)
    assert_response :success
  end

  test "should get edit" do
    get edit_coachinfo_url(@coachinfo)
    assert_response :success
  end

  test "should update coachinfo" do
    patch coachinfo_url(@coachinfo), params: { coachinfo: { age: @coachinfo.age, country: @coachinfo.country, name: @coachinfo.name, sportname: @coachinfo.sportname } }
    assert_redirected_to coachinfo_url(@coachinfo)
  end

  test "should destroy coachinfo" do
    assert_difference('Coachinfo.count', -1) do
      delete coachinfo_url(@coachinfo)
    end

    assert_redirected_to coachinfos_url
  end
end
