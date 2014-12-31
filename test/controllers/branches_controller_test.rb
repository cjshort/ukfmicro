require 'test_helper'

class BranchesControllerTest < ActionController::TestCase
  test "should get dashboard" do
    get :dashboard
    assert_response :success
  end

  test "should get settings" do
    get :settings
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

end
