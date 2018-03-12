require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get customers_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_url
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post customers_url, params: { customer: { customer_address_1: @customer.customer_address_1, customer_address_2: @customer.customer_address_2, customer_branch: @customer.customer_branch, customer_name: @customer.customer_name, customer_rep_email_1: @customer.customer_rep_email_1, customer_rep_email_2: @customer.customer_rep_email_2, customer_rep_name_1: @customer.customer_rep_name_1, customer_rep_name_2: @customer.customer_rep_name_2, customer_rep_phone_1: @customer.customer_rep_phone_1, customer_rep_phone_2: @customer.customer_rep_phone_2, customer_status_id: @customer.customer_status_id, state_id: @customer.state_id, string: @customer.string } }
    end

    assert_redirected_to customer_url(Customer.last)
  end

  test "should show customer" do
    get customer_url(@customer)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_url(@customer)
    assert_response :success
  end

  test "should update customer" do
    patch customer_url(@customer), params: { customer: { customer_address_1: @customer.customer_address_1, customer_address_2: @customer.customer_address_2, customer_branch: @customer.customer_branch, customer_name: @customer.customer_name, customer_rep_email_1: @customer.customer_rep_email_1, customer_rep_email_2: @customer.customer_rep_email_2, customer_rep_name_1: @customer.customer_rep_name_1, customer_rep_name_2: @customer.customer_rep_name_2, customer_rep_phone_1: @customer.customer_rep_phone_1, customer_rep_phone_2: @customer.customer_rep_phone_2, customer_status_id: @customer.customer_status_id, state_id: @customer.state_id, string: @customer.string } }
    assert_redirected_to customer_url(@customer)
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete customer_url(@customer)
    end

    assert_redirected_to customers_url
  end
end
