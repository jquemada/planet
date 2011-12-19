require 'test_helper'

class TripSitesControllerTest < ActionController::TestCase
  setup do
    @trip_site = trip_sites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trip_sites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trip_site" do
    assert_difference('TripSite.count') do
      post :create, trip_site: @trip_site.attributes
    end

    assert_redirected_to trip_site_path(assigns(:trip_site))
  end

  test "should show trip_site" do
    get :show, id: @trip_site.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trip_site.to_param
    assert_response :success
  end

  test "should update trip_site" do
    put :update, id: @trip_site.to_param, trip_site: @trip_site.attributes
    assert_redirected_to trip_site_path(assigns(:trip_site))
  end

  test "should destroy trip_site" do
    assert_difference('TripSite.count', -1) do
      delete :destroy, id: @trip_site.to_param
    end

    assert_redirected_to trip_sites_path
  end
end
