require 'test_helper'

class WebsitesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get story" do
    get :story
    assert_response :success
  end

  test "should get blog" do
    get :blog
    assert_response :success
  end

  test "should get blogshow" do
    get :blogshow
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
