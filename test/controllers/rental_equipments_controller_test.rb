require 'test_helper'

class RentalEquipmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rental_equipment = rental_equipments(:one)
  end

  test "should get index" do
    get rental_equipments_url
    assert_response :success
  end

  test "should get new" do
    get new_rental_equipment_url
    assert_response :success
  end

  test "should create rental_equipment" do
    assert_difference('RentalEquipment.count') do
      post rental_equipments_url, params: { rental_equipment: { rental_description: @rental_equipment.rental_description } }
    end

    assert_redirected_to rental_equipment_url(RentalEquipment.last)
  end

  test "should show rental_equipment" do
    get rental_equipment_url(@rental_equipment)
    assert_response :success
  end

  test "should get edit" do
    get edit_rental_equipment_url(@rental_equipment)
    assert_response :success
  end

  test "should update rental_equipment" do
    patch rental_equipment_url(@rental_equipment), params: { rental_equipment: { rental_description: @rental_equipment.rental_description } }
    assert_redirected_to rental_equipment_url(@rental_equipment)
  end

  test "should destroy rental_equipment" do
    assert_difference('RentalEquipment.count', -1) do
      delete rental_equipment_url(@rental_equipment)
    end

    assert_redirected_to rental_equipments_url
  end
end
