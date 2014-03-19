require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  setup do
    @user = Factory(:user)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get dashboard" do
    sign_in @user
    get :dashboard
    assert_response :success
    assert_template layout: 'layouts/angular'
  end

  test "should redirect from dashboard to index with no user" do
    get :dashboard
    assert_response :redirect
  end
end
