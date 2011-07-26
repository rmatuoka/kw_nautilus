require 'test_helper'

class Institucional::RevendasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
