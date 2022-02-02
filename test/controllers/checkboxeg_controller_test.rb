require 'test_helper'

class CheckboxegControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get checkboxeg_index_url
    assert_response :success
  end

end
