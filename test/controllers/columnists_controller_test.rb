require 'test_helper'

class ColumnistsControllerTest < ActionController::TestCase
  setup do
    @columnist = columnists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:columnists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create columnist" do
    assert_difference('Columnist.count') do
      post :create, columnist: { name: @columnist.name }
    end

    assert_redirected_to columnist_path(assigns(:columnist))
  end

  test "should show columnist" do
    get :show, id: @columnist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @columnist
    assert_response :success
  end

  test "should update columnist" do
    patch :update, id: @columnist, columnist: { name: @columnist.name }
    assert_redirected_to columnist_path(assigns(:columnist))
  end

  test "should destroy columnist" do
    assert_difference('Columnist.count', -1) do
      delete :destroy, id: @columnist
    end

    assert_redirected_to columnists_path
  end
end
