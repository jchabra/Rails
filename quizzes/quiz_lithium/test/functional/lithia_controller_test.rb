require 'test_helper'

class LithiaControllerTest < ActionController::TestCase
  setup do
    @lithium = lithia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lithia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lithium" do
    assert_difference('Lithium.count') do
      post :create, lithium: {  }
    end

    assert_redirected_to lithium_path(assigns(:lithium))
  end

  test "should show lithium" do
    get :show, id: @lithium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lithium
    assert_response :success
  end

  test "should update lithium" do
    put :update, id: @lithium, lithium: {  }
    assert_redirected_to lithium_path(assigns(:lithium))
  end

  test "should destroy lithium" do
    assert_difference('Lithium.count', -1) do
      delete :destroy, id: @lithium
    end

    assert_redirected_to lithia_path
  end
end
