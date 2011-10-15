require 'test_helper'

class CustomerClassesControllerTest < ActionController::TestCase
  setup do
    @customer_class = customer_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customer_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer_class" do
    assert_difference('CustomerClass.count') do
      post :create, customer_class: @customer_class.attributes
    end

    assert_redirected_to customer_class_path(assigns(:customer_class))
  end

  test "should show customer_class" do
    get :show, id: @customer_class.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer_class.to_param
    assert_response :success
  end

  test "should update customer_class" do
    put :update, id: @customer_class.to_param, customer_class: @customer_class.attributes
    assert_redirected_to customer_class_path(assigns(:customer_class))
  end

  test "should destroy customer_class" do
    assert_difference('CustomerClass.count', -1) do
      delete :destroy, id: @customer_class.to_param
    end

    assert_redirected_to customer_classes_path
  end
end
