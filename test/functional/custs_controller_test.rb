require 'test_helper'

class CustsControllerTest < ActionController::TestCase
  setup do
    @cust = custs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:custs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cust" do
    assert_difference('Cust.count') do
      post :create, cust: { address: @cust.address, email: @cust.email, name: @cust.name }
    end

    assert_redirected_to cust_path(assigns(:cust))
  end

  test "should show cust" do
    get :show, id: @cust
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cust
    assert_response :success
  end

  test "should update cust" do
    put :update, id: @cust, cust: { address: @cust.address, email: @cust.email, name: @cust.name }
    assert_redirected_to cust_path(assigns(:cust))
  end

  test "should destroy cust" do
    assert_difference('Cust.count', -1) do
      delete :destroy, id: @cust
    end

    assert_redirected_to custs_path
  end
end
