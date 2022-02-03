require 'test_helper'

class AppoinmentinfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appoinmentinfo = appoinmentinfos(:one)
  end

  test "should get index" do
    get appoinmentinfos_url
    assert_response :success
  end

  test "should get new" do
    get new_appoinmentinfo_url
    assert_response :success
  end

  test "should create appoinmentinfo" do
    assert_difference('Appoinmentinfo.count') do
      post appoinmentinfos_url, params: { appoinmentinfo: { appoinmentinfo: @appoinmentinfo.appoinmentinfo, doctor_name: @appoinmentinfo.doctor_name, player_name: @appoinmentinfo.player_name } }
    end

    assert_redirected_to appoinmentinfo_url(Appoinmentinfo.last)
  end

  test "should show appoinmentinfo" do
    get appoinmentinfo_url(@appoinmentinfo)
    assert_response :success
  end

  test "should get edit" do
    get edit_appoinmentinfo_url(@appoinmentinfo)
    assert_response :success
  end

  test "should update appoinmentinfo" do
    patch appoinmentinfo_url(@appoinmentinfo), params: { appoinmentinfo: { appoinmentinfo: @appoinmentinfo.appoinmentinfo, doctor_name: @appoinmentinfo.doctor_name, player_name: @appoinmentinfo.player_name } }
    assert_redirected_to appoinmentinfo_url(@appoinmentinfo)
  end

  test "should destroy appoinmentinfo" do
    assert_difference('Appoinmentinfo.count', -1) do
      delete appoinmentinfo_url(@appoinmentinfo)
    end

    assert_redirected_to appoinmentinfos_url
  end
end
