require 'test_helper'

class UserHouseworksControllerTest < ActionController::TestCase
  setup do
    @user_housework = user_houseworks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_houseworks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_housework" do
    assert_difference('UserHousework.count') do
      post :create, user_housework: {  }
    end

    assert_redirected_to user_housework_path(assigns(:user_housework))
  end

  test "should show user_housework" do
    get :show, id: @user_housework
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_housework
    assert_response :success
  end

  test "should update user_housework" do
    patch :update, id: @user_housework, user_housework: {  }
    assert_redirected_to user_housework_path(assigns(:user_housework))
  end

  test "should destroy user_housework" do
    assert_difference('UserHousework.count', -1) do
      delete :destroy, id: @user_housework
    end

    assert_redirected_to user_houseworks_path
  end
end
