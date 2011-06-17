require 'test_helper'

class UnlocksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unlocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unlock" do
    assert_difference('Unlock.count') do
      post :create, :unlock => { }
    end

    assert_redirected_to unlock_path(assigns(:unlock))
  end

  test "should show unlock" do
    get :show, :id => unlocks(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => unlocks(:one).to_param
    assert_response :success
  end

  test "should update unlock" do
    put :update, :id => unlocks(:one).to_param, :unlock => { }
    assert_redirected_to unlock_path(assigns(:unlock))
  end

  test "should destroy unlock" do
    assert_difference('Unlock.count', -1) do
      delete :destroy, :id => unlocks(:one).to_param
    end

    assert_redirected_to unlocks_path
  end
end
