require 'test_helper'

class Admin::RealtorsControllerTest < ActionController::TestCase
  setup do
    @admin_realtor = admin_realtors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_realtors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_realtor" do
    assert_difference('Admin::Realtor.count') do
      post :create, admin_realtor: { image: @admin_realtor.image, more: @admin_realtor.more, title: @admin_realtor.title, url: @admin_realtor.url }
    end

    assert_redirected_to admin_realtor_path(assigns(:admin_realtor))
  end

  test "should show admin_realtor" do
    get :show, id: @admin_realtor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_realtor
    assert_response :success
  end

  test "should update admin_realtor" do
    patch :update, id: @admin_realtor, admin_realtor: { image: @admin_realtor.image, more: @admin_realtor.more, title: @admin_realtor.title, url: @admin_realtor.url }
    assert_redirected_to admin_realtor_path(assigns(:admin_realtor))
  end

  test "should destroy admin_realtor" do
    assert_difference('Admin::Realtor.count', -1) do
      delete :destroy, id: @admin_realtor
    end

    assert_redirected_to admin_realtors_path
  end
end
