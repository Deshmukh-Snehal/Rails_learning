require 'test_helper'

class CalculatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @calculate = calculates(:one)
  end

  test "should get index" do
    get calculates_url
    assert_response :success
  end

  test "should get new" do
    get new_calculate_url
    assert_response :success
  end

  test "should create calculate" do
    assert_difference('Calculate.count') do
      post calculates_url, params: { calculate: { name: @calculate.name } }
    end

    assert_redirected_to calculate_url(Calculate.last)
  end

  test "should show calculate" do
    get calculate_url(@calculate)
    assert_response :success
  end

  test "should get edit" do
    get edit_calculate_url(@calculate)
    assert_response :success
  end

  test "should update calculate" do
    patch calculate_url(@calculate), params: { calculate: { name: @calculate.name } }
    assert_redirected_to calculate_url(@calculate)
  end

  test "should destroy calculate" do
    assert_difference('Calculate.count', -1) do
      delete calculate_url(@calculate)
    end

    assert_redirected_to calculates_url
  end
end
