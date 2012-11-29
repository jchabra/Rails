require 'test_helper'

class HydrogensControllerTest < ActionController::TestCase
  setup do
    @hydrogen = hydrogens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hydrogens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hydrogen" do
    assert_difference('Hydrogen.count') do
      post :create, hydrogen: {  }
    end

    assert_redirected_to hydrogen_path(assigns(:hydrogen))
  end

  test "should show hydrogen" do
    get :show, id: @hydrogen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hydrogen
    assert_response :success
  end

  test "should update hydrogen" do
    put :update, id: @hydrogen, hydrogen: {  }
    assert_redirected_to hydrogen_path(assigns(:hydrogen))
  end

  test "should destroy hydrogen" do
    assert_difference('Hydrogen.count', -1) do
      delete :destroy, id: @hydrogen
    end

    assert_redirected_to hydrogens_path
  end
end
