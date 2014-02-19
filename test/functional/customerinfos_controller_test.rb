require 'test_helper'

class CustomerinfosControllerTest < ActionController::TestCase
  setup do
    @customerinfo = customerinfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customerinfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customerinfo" do
    assert_difference('Customerinfo.count') do
      post :create, customerinfo: { first_name: @customerinfo.first_name, last_name: @customerinfo.last_name, phone_number: @customerinfo.phone_number }
    end

    assert_redirected_to customerinfo_path(assigns(:customerinfo))
  end

  test "should show customerinfo" do
    get :show, id: @customerinfo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customerinfo
    assert_response :success
  end

  test "should update customerinfo" do
    put :update, id: @customerinfo, customerinfo: { first_name: @customerinfo.first_name, last_name: @customerinfo.last_name, phone_number: @customerinfo.phone_number }
    assert_redirected_to customerinfo_path(assigns(:customerinfo))
  end

  test "should destroy customerinfo" do
    assert_difference('Customerinfo.count', -1) do
      delete :destroy, id: @customerinfo
    end

    assert_redirected_to customerinfos_path
  end
end
