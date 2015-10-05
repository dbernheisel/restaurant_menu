require 'test_helper'

class MealtimesControllerTest < ActionController::TestCase
  setup do
    @mealtime = mealtimes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mealtimes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mealtime" do
    assert_difference('Mealtime.count') do
      post :create, mealtime: { name: @mealtime.name }
    end

    assert_redirected_to mealtime_path(assigns(:mealtime))
  end

  test "should show mealtime" do
    get :show, id: @mealtime
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mealtime
    assert_response :success
  end

  test "should update mealtime" do
    patch :update, id: @mealtime, mealtime: { name: @mealtime.name }
    assert_redirected_to mealtime_path(assigns(:mealtime))
  end

  test "should destroy mealtime" do
    assert_difference('Mealtime.count', -1) do
      delete :destroy, id: @mealtime
    end

    assert_redirected_to mealtimes_path
  end
end
