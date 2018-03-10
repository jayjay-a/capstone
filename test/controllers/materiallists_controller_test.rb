require 'test_helper'

class MateriallistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @materiallist = materiallists(:one)
  end

  test "should get index" do
    get materiallists_url
    assert_response :success
  end

  test "should get new" do
    get new_materiallist_url
    assert_response :success
  end

  test "should create materiallist" do
    assert_difference('Materiallist.count') do
      post materiallists_url, params: { materiallist: { material_id: @materiallist.material_id, project_id: @materiallist.project_id, quantity: @materiallist.quantity, unit_price: @materiallist.unit_price } }
    end

    assert_redirected_to materiallist_url(Materiallist.last)
  end

  test "should show materiallist" do
    get materiallist_url(@materiallist)
    assert_response :success
  end

  test "should get edit" do
    get edit_materiallist_url(@materiallist)
    assert_response :success
  end

  test "should update materiallist" do
    patch materiallist_url(@materiallist), params: { materiallist: { material_id: @materiallist.material_id, project_id: @materiallist.project_id, quantity: @materiallist.quantity, unit_price: @materiallist.unit_price } }
    assert_redirected_to materiallist_url(@materiallist)
  end

  test "should destroy materiallist" do
    assert_difference('Materiallist.count', -1) do
      delete materiallist_url(@materiallist)
    end

    assert_redirected_to materiallists_url
  end
end
