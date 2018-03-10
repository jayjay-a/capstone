require 'test_helper'

class ProjectstatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projectstatus = projectstatuses(:one)
  end

  test "should get index" do
    get projectstatuses_url
    assert_response :success
  end

  test "should get new" do
    get new_projectstatus_url
    assert_response :success
  end

  test "should create projectstatus" do
    assert_difference('Projectstatus.count') do
      post projectstatuses_url, params: { projectstatus: { project_status_description: @projectstatus.project_status_description } }
    end

    assert_redirected_to projectstatus_url(Projectstatus.last)
  end

  test "should show projectstatus" do
    get projectstatus_url(@projectstatus)
    assert_response :success
  end

  test "should get edit" do
    get edit_projectstatus_url(@projectstatus)
    assert_response :success
  end

  test "should update projectstatus" do
    patch projectstatus_url(@projectstatus), params: { projectstatus: { project_status_description: @projectstatus.project_status_description } }
    assert_redirected_to projectstatus_url(@projectstatus)
  end

  test "should destroy projectstatus" do
    assert_difference('Projectstatus.count', -1) do
      delete projectstatus_url(@projectstatus)
    end

    assert_redirected_to projectstatuses_url
  end
end
