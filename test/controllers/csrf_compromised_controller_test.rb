require "test_helper"

class CsrfCompromisedControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get csrf_compromised_index_url
    assert_response :success
  end
end
