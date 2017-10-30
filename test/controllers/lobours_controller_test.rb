require 'test_helper'

class LoboursControllerTest < ActionController::TestCase
  setup do
    @lobour = lobours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lobours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lobour" do
    assert_difference('Lobour.count') do
      post :create, lobour: { age: @lobour.age, emp_no: @lobour.emp_no, name: @lobour.name }
    end

    assert_redirected_to lobour_path(assigns(:lobour))
  end

  test "should show lobour" do
    get :show, id: @lobour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lobour
    assert_response :success
  end

  test "should update lobour" do
    patch :update, id: @lobour, lobour: { age: @lobour.age, emp_no: @lobour.emp_no, name: @lobour.name }
    assert_redirected_to lobour_path(assigns(:lobour))
  end

  test "should destroy lobour" do
    assert_difference('Lobour.count', -1) do
      delete :destroy, id: @lobour
    end

    assert_redirected_to lobours_path
  end
end
