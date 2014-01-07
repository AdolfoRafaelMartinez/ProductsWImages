require 'test_helper'

class T0sControllerTest < ActionController::TestCase
  setup do
    @t0 = t0s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:t0s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create t0" do
    assert_difference('T0.count') do
      post :create, :t0 => @t0.attributes
    end

    assert_redirected_to t0_path(assigns(:t0))
  end

  test "should show t0" do
    get :show, :id => @t0.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @t0.to_param
    assert_response :success
  end

  test "should update t0" do
    put :update, :id => @t0.to_param, :t0 => @t0.attributes
    assert_redirected_to t0_path(assigns(:t0))
  end

  test "should destroy t0" do
    assert_difference('T0.count', -1) do
      delete :destroy, :id => @t0.to_param
    end

    assert_redirected_to t0s_path
  end
end
