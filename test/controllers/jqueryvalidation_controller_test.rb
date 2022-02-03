require 'test_helper'

class JqueryvalidationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get jqueryvalidation_index_url
    assert_response :success
  end

end
