require 'test_helper'

class DiningHallsControllerTest < ActionController::TestCase
  setup do
    @dining_hall = dining_halls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dining_halls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dining_hall" do
    assert_difference('DiningHall.count') do
      post :create, dining_hall: { name: @dining_hall.name }
    end

    assert_redirected_to dining_hall_path(assigns(:dining_hall))
  end

  test "should show dining_hall" do
    get :show, id: @dining_hall
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dining_hall
    assert_response :success
  end

  test "should update dining_hall" do
    patch :update, id: @dining_hall, dining_hall: { name: @dining_hall.name }
    assert_redirected_to dining_hall_path(assigns(:dining_hall))
  end

  test "should destroy dining_hall" do
    assert_difference('DiningHall.count', -1) do
      delete :destroy, id: @dining_hall
    end

    assert_redirected_to dining_halls_path
  end
end
