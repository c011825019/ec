require "test_helper"

class CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get _customers_url
    assert_response :success
  end

  test "should get new" do
    get new__customer_url
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post _customers_url, params: { customer: {  } }
    end

    assert_redirected_to customer_url(Customer.last)
  end

  test "should show customer" do
    get _customer_url(@customer)
    assert_response :success
  end

  test "should get edit" do
    get edit__customer_url(@customer)
    assert_response :success
  end

  test "should update customer" do
    patch _customer_url(@customer), params: { customer: {  } }
    assert_redirected_to customer_url(@customer)
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete _customer_url(@customer)
    end

    assert_redirected_to _customers_url
  end
end
