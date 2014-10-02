require 'test_helper'

class MainControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get course" do
    get :course
    assert_response :success
  end

  test "should get lesson" do
    get :lesson
    assert_response :success
  end

end
