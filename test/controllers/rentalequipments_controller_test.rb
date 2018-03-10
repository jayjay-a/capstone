require 'test_helper'

class RentalequipmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rentalequipment = rentalequipments(:one)
  end

  test "should get index" do
    get rentalequipments_url
    assert_response :success
  end

  test "should get new" do
    get new_rentalequipment_url
    assert_response :success
  end

  test "should create rentalequipment" do
    assert_difference('Rentalequipment.count') do
      post rentalequipments_url, params: { rentalequipment: { rental_description: @rentalequipment.rental_description } }
    end

    assert_redirected_to rentalequipment_url(Rentalequipment.last)
  end

  test "should show rentalequipment" do
    get rentalequipment_url(@rentalequipment)
    assert_response :success
  end

  test "should get edit" do
    get edit_rentalequipment_url(@rentalequipment)
    assert_response :success
  end

  test "should update rentalequipment" do
    patch rentalequipment_url(@rentalequipment), params: { rentalequipment: { rental_description: @rentalequipment.rental_description } }
    assert_redirected_to rentalequipment_url(@rentalequipment)
  end

  test "should destroy rentalequipment" do
    assert_difference('Rentalequipment.count', -1) do
      delete rentalequipment_url(@rentalequipment)
    end

    assert_redirected_to rentalequipments_url
  end
end
