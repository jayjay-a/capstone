require 'test_helper'

class SubcontractorStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subcontractor_status = subcontractor_statuses(:one)
  end

  test "should get index" do
    get subcontractor_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_subcontractor_status_url
    assert_response :success
  end

  test "should create subcontractor_status" do
    assert_difference('SubcontractorStatus.count') do
      post subcontractor_statuses_url, params: { subcontractor_status: { subcontractor_status_description: @subcontractor_status.subcontractor_status_description } }
    end

    assert_redirected_to subcontractor_status_url(SubcontractorStatus.last)
  end

  test "should show subcontractor_status" do
    get subcontractor_status_url(@subcontractor_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_subcontractor_status_url(@subcontractor_status)
    assert_response :success
  end

  test "should update subcontractor_status" do
    patch subcontractor_status_url(@subcontractor_status), params: { subcontractor_status: { subcontractor_status_description: @subcontractor_status.subcontractor_status_description } }
    assert_redirected_to subcontractor_status_url(@subcontractor_status)
  end

  test "should destroy subcontractor_status" do
    assert_difference('SubcontractorStatus.count', -1) do
      delete subcontractor_status_url(@subcontractor_status)
    end

    assert_redirected_to subcontractor_statuses_url
  end
end
