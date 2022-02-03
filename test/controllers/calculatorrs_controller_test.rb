require 'test_helper'

class CalculatorrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @calculatorr = calculatorrs(:one)
  end

  test "should get index" do
    get calculatorrs_url
    assert_response :success
  end

  test "should get new" do
    get new_calculatorr_url
    assert_response :success
  end

  test "should create calculatorr" do
    assert_difference('Calculatorr.count') do
      post calculatorrs_url, params: { calculatorr: { name: @calculatorr.name } }
    end

    assert_redirected_to calculatorr_url(Calculatorr.last)
  end

  test "should show calculatorr" do
    get calculatorr_url(@calculatorr)
    assert_response :success
  end

  test "should get edit" do
    get edit_calculatorr_url(@calculatorr)
    assert_response :success
  end

  test "should update calculatorr" do
    patch calculatorr_url(@calculatorr), params: { calculatorr: { name: @calculatorr.name } }
    assert_redirected_to calculatorr_url(@calculatorr)
  end

  test "should destroy calculatorr" do
    assert_difference('Calculatorr.count', -1) do
      delete calculatorr_url(@calculatorr)
    end

    assert_redirected_to calculatorrs_url
  end
end
