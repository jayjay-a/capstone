require 'test_helper'

class RentallistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rentallist = rentallists(:one)
  end

  test "should get index" do
    get rentallists_url
    assert_response :success
  end

  test "should get new" do
    get new_rentallist_url
    assert_response :success
  end

  test "should create rentallist" do
    assert_difference('Rentallist.count') do
      post rentallists_url, params: { rentallist: { cost_frequency: @rentallist.cost_frequency, project_id: @rentallist.project_id, rental_equipment_id: @rentallist.rental_equipment_id, rental_price: @rentallist.rental_price } }
    end

    assert_redirected_to rentallist_url(Rentallist.last)
  end

  test "should show rentallist" do
    get rentallist_url(@rentallist)
    assert_response :success
  end

  test "should get edit" do
    get edit_rentallist_url(@rentallist)
    assert_response :success
  end

  test "should update rentallist" do
    patch rentallist_url(@rentallist), params: { rentallist: { cost_frequency: @rentallist.cost_frequency, project_id: @rentallist.project_id, rental_equipment_id: @rentallist.rental_equipment_id, rental_price: @rentallist.rental_price } }
    assert_redirected_to rentallist_url(@rentallist)
  end

  test "should destroy rentallist" do
    assert_difference('Rentallist.count', -1) do
      delete rentallist_url(@rentallist)
    end

    assert_redirected_to rentallists_url
  end
end
