require 'test_helper'

class DefaultsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:defaults)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create default" do
    assert_difference('Default.count') do
      post :create, :default => { }
    end

    assert_redirected_to default_path(assigns(:default))
  end

  test "should show default" do
    get :show, :id => defaults(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => defaults(:one).to_param
    assert_response :success
  end

  test "should update default" do
    put :update, :id => defaults(:one).to_param, :default => { }
    assert_redirected_to default_path(assigns(:default))
  end

  test "should destroy default" do
    assert_difference('Default.count', -1) do
      delete :destroy, :id => defaults(:one).to_param
    end

    assert_redirected_to defaults_path
  end
end
