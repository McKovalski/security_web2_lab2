require "test_helper"

class SqlinjectionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sqlinjection_index_url
    assert_response :success
  end
end
