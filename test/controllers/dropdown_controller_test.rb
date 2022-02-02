require 'test_helper'

class DropdownControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dropdown_index_url
    assert_response :success
  end

end
