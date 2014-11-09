require 'test_helper'

class Admin::FormsControllerTest < ActionController::TestCase
  setup do
    @admin_form = admin_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_form" do
    assert_difference('Admin::Form.count') do
      post :create, admin_form: { content: @admin_form.content, link: @admin_form.link, title: @admin_form.title }
    end

    assert_redirected_to admin_form_path(assigns(:admin_form))
  end

  test "should show admin_form" do
    get :show, id: @admin_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_form
    assert_response :success
  end

  test "should update admin_form" do
    patch :update, id: @admin_form, admin_form: { content: @admin_form.content, link: @admin_form.link, title: @admin_form.title }
    assert_redirected_to admin_form_path(assigns(:admin_form))
  end

  test "should destroy admin_form" do
    assert_difference('Admin::Form.count', -1) do
      delete :destroy, id: @admin_form
    end

    assert_redirected_to admin_forms_path
  end
end
