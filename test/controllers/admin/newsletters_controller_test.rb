require 'test_helper'

class Admin::NewslettersControllerTest < ActionController::TestCase
  setup do
    @admin_newsletter = admin_newsletters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_newsletters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_newsletter" do
    assert_difference('Admin::Newsletter.count') do
      post :create, admin_newsletter: { birthdate: @admin_newsletter.birthdate, country: @admin_newsletter.country, email: @admin_newsletter.email, has_interest_rate_updates: @admin_newsletter.has_interest_rate_updates, has_mortgage_news: @admin_newsletter.has_mortgage_news, has_special_events: @admin_newsletter.has_special_events, name: @admin_newsletter.name, zip: @admin_newsletter.zip }
    end

    assert_redirected_to admin_newsletter_path(assigns(:admin_newsletter))
  end

  test "should show admin_newsletter" do
    get :show, id: @admin_newsletter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_newsletter
    assert_response :success
  end

  test "should update admin_newsletter" do
    patch :update, id: @admin_newsletter, admin_newsletter: { birthdate: @admin_newsletter.birthdate, country: @admin_newsletter.country, email: @admin_newsletter.email, has_interest_rate_updates: @admin_newsletter.has_interest_rate_updates, has_mortgage_news: @admin_newsletter.has_mortgage_news, has_special_events: @admin_newsletter.has_special_events, name: @admin_newsletter.name, zip: @admin_newsletter.zip }
    assert_redirected_to admin_newsletter_path(assigns(:admin_newsletter))
  end

  test "should destroy admin_newsletter" do
    assert_difference('Admin::Newsletter.count', -1) do
      delete :destroy, id: @admin_newsletter
    end

    assert_redirected_to admin_newsletters_path
  end
end
