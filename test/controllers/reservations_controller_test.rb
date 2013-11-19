require 'test_helper'

class ReservationsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get shownew" do
    get :shownew
    assert_response :success
  end

end
