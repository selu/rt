require 'test_helper'

class ProbasControllerTest < ActionController::TestCase
  setup do
    @proba = probas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:probas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proba" do
    assert_difference('Proba.count') do
      post :create, :proba => @proba.attributes
    end

    assert_redirected_to proba_path(assigns(:proba))
  end

  test "should show proba" do
    get :show, :id => @proba.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @proba.to_param
    assert_response :success
  end

  test "should update proba" do
    put :update, :id => @proba.to_param, :proba => @proba.attributes
    assert_redirected_to proba_path(assigns(:proba))
  end

  test "should destroy proba" do
    assert_difference('Proba.count', -1) do
      delete :destroy, :id => @proba.to_param
    end

    assert_redirected_to probas_path
  end
end
