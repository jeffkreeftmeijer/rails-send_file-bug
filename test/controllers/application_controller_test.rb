require_relative '../test_helper'

class ApplicationControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_match /ApplicationController#halt_and_send_file/, response.body
  end
end
