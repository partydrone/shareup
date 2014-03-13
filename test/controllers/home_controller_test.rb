require 'test_helper'
require 'action_controller/test_case'

describe HomeController do
  it "gets index" do
    get :index
    must_respond_with :success
  end
end
