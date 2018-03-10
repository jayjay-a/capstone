require 'test_helper'

class RentalListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rental_list = rental_lists(:one)
  end

  test "should get index" do
    get rental_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_rental_list_url
    assert_response :success
  end

  test "should create rental_list" do
    assert_difference('RentalList.count') do
      post rental_lists_url, params: { rental_list: { cost_frequency: @rental_list.cost_frequency, project_id: @rental_list.project_id, rental_equipment_id: @rental_list.rental_equipment_id, rental_price: @rental_list.rental_price } }
    end

    assert_redirected_to rental_list_url(RentalList.last)
  end

  test "should show rental_list" do
    get rental_list_url(@rental_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_rental_list_url(@rental_list)
    assert_response :success
  end

  test "should update rental_list" do
    patch rental_list_url(@rental_list), params: { rental_list: { cost_frequency: @rental_list.cost_frequency, project_id: @rental_list.project_id, rental_equipment_id: @rental_list.rental_equipment_id, rental_price: @rental_list.rental_price } }
    assert_redirected_to rental_list_url(@rental_list)
  end

  test "should destroy rental_list" do
    assert_difference('RentalList.count', -1) do
      delete rental_list_url(@rental_list)
    end

    assert_redirected_to rental_lists_url
  end
end
