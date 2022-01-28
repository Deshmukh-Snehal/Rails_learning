require 'test_helper'

class AppoinmentdetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appoinmentdetail = appoinmentdetails(:one)
  end

  test "should get index" do
    get appoinmentdetails_url
    assert_response :success
  end

  test "should get new" do
    get new_appoinmentdetail_url
    assert_response :success
  end

  test "should create appoinmentdetail" do
    assert_difference('Appoinmentdetail.count') do
      post appoinmentdetails_url, params: { appoinmentdetail: { appoinment_details: @appoinmentdetail.appoinment_details } }
    end

    assert_redirected_to appoinmentdetail_url(Appoinmentdetail.last)
  end

  test "should show appoinmentdetail" do
    get appoinmentdetail_url(@appoinmentdetail)
    assert_response :success
  end

  test "should get edit" do
    get edit_appoinmentdetail_url(@appoinmentdetail)
    assert_response :success
  end

  test "should update appoinmentdetail" do
    patch appoinmentdetail_url(@appoinmentdetail), params: { appoinmentdetail: { appoinment_details: @appoinmentdetail.appoinment_details } }
    assert_redirected_to appoinmentdetail_url(@appoinmentdetail)
  end

  test "should destroy appoinmentdetail" do
    assert_difference('Appoinmentdetail.count', -1) do
      delete appoinmentdetail_url(@appoinmentdetail)
    end

    assert_redirected_to appoinmentdetails_url
  end
end
