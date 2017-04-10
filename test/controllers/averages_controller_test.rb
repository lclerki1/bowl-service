require 'test_helper'

class AveragesControllerTest < ActionController::TestCase
  test "should get compare" do
    get :compare
    assert_response :success
  end

end
