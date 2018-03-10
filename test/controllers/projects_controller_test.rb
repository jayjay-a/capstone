require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get projects_url
    assert_response :success
  end

  test "should get new" do
    get new_project_url
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post projects_url, params: { project: { bid_amount: @project.bid_amount, bid_cost_of_labor_decimal: @project.bid_cost_of_labor_decimal, bid_cost_of_permits: @project.bid_cost_of_permits, bid_equipment_rental: @project.bid_equipment_rental, bid_freight_decimal: @project.bid_freight_decimal, bid_material_cost: @project.bid_material_cost, bid_submit_date: @project.bid_submit_date, customer_id: @project.customer_id, er: @project.er, project_end_date: @project.project_end_date, project_start_date: @project.project_start_date, project_status_id: @project.project_status_id, project_type_id: @project.project_type_id, tax_rate: @project.tax_rate } }
    end

    assert_redirected_to project_url(Project.last)
  end

  test "should show project" do
    get project_url(@project)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_url(@project)
    assert_response :success
  end

  test "should update project" do
    patch project_url(@project), params: { project: { bid_amount: @project.bid_amount, bid_cost_of_labor_decimal: @project.bid_cost_of_labor_decimal, bid_cost_of_permits: @project.bid_cost_of_permits, bid_equipment_rental: @project.bid_equipment_rental, bid_freight_decimal: @project.bid_freight_decimal, bid_material_cost: @project.bid_material_cost, bid_submit_date: @project.bid_submit_date, customer_id: @project.customer_id, er: @project.er, project_end_date: @project.project_end_date, project_start_date: @project.project_start_date, project_status_id: @project.project_status_id, project_type_id: @project.project_type_id, tax_rate: @project.tax_rate } }
    assert_redirected_to project_url(@project)
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete project_url(@project)
    end

    assert_redirected_to projects_url
  end
end
