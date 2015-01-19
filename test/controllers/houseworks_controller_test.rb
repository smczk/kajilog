require 'test_helper'

class HouseworksControllerTest < ActionController::TestCase
  setup do
    @housework = houseworks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:houseworks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create housework" do
    assert_difference('Housework.count') do
      post :create, housework: { name: @housework.name }
    end

    assert_redirected_to housework_path(assigns(:housework))
  end

  test "should show housework" do
    get :show, id: @housework
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @housework
    assert_response :success
  end

  test "should update housework" do
    patch :update, id: @housework, housework: { name: @housework.name }
    assert_redirected_to housework_path(assigns(:housework))
  end

  test "should destroy housework" do
    assert_difference('Housework.count', -1) do
      delete :destroy, id: @housework
    end

    assert_redirected_to houseworks_path
  end
end
