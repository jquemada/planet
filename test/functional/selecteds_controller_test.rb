require 'test_helper'

class SelectedsControllerTest < ActionController::TestCase
  setup do
    @selected = selecteds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:selecteds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create selected" do
    assert_difference('Selected.count') do
      post :create, selected: @selected.attributes
    end

    assert_redirected_to selected_path(assigns(:selected))
  end

  test "should show selected" do
    get :show, id: @selected.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @selected.to_param
    assert_response :success
  end

  test "should update selected" do
    put :update, id: @selected.to_param, selected: @selected.attributes
    assert_redirected_to selected_path(assigns(:selected))
  end

  test "should destroy selected" do
    assert_difference('Selected.count', -1) do
      delete :destroy, id: @selected.to_param
    end

    assert_redirected_to selecteds_path
  end
end
