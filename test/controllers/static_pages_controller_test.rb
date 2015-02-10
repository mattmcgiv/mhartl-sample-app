require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  page_title_suffix = "| Ruby on Rails Tutorial Sample App"

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home #{page_title_suffix}"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help #{page_title_suffix}"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About #{page_title_suffix}"
  end
end
