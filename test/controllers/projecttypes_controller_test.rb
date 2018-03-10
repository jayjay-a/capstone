require 'test_helper'

class ProjecttypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projecttype = projecttypes(:one)
  end

  test "should get index" do
    get projecttypes_url
    assert_response :success
  end

  test "should get new" do
    get new_projecttype_url
    assert_response :success
  end

  test "should create projecttype" do
    assert_difference('Projecttype.count') do
      post projecttypes_url, params: { projecttype: { project_type_description: @projecttype.project_type_description } }
    end

    assert_redirected_to projecttype_url(Projecttype.last)
  end

  test "should show projecttype" do
    get projecttype_url(@projecttype)
    assert_response :success
  end

  test "should get edit" do
    get edit_projecttype_url(@projecttype)
    assert_response :success
  end

  test "should update projecttype" do
    patch projecttype_url(@projecttype), params: { projecttype: { project_type_description: @projecttype.project_type_description } }
    assert_redirected_to projecttype_url(@projecttype)
  end

  test "should destroy projecttype" do
    assert_difference('Projecttype.count', -1) do
      delete projecttype_url(@projecttype)
    end

    assert_redirected_to projecttypes_url
  end
end
