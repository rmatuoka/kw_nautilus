require 'test_helper'

class Institucional::SobreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
