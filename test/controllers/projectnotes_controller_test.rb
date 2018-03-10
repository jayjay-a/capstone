require 'test_helper'

class ProjectnotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projectnote = projectnotes(:one)
  end

  test "should get index" do
    get projectnotes_url
    assert_response :success
  end

  test "should get new" do
    get new_projectnote_url
    assert_response :success
  end

  test "should create projectnote" do
    assert_difference('Projectnote.count') do
      post projectnotes_url, params: { projectnote: { note_owner: @projectnote.note_owner, project_id: @projectnote.project_id, project_note_date: @projectnote.project_note_date, project_notes: @projectnote.project_notes } }
    end

    assert_redirected_to projectnote_url(Projectnote.last)
  end

  test "should show projectnote" do
    get projectnote_url(@projectnote)
    assert_response :success
  end

  test "should get edit" do
    get edit_projectnote_url(@projectnote)
    assert_response :success
  end

  test "should update projectnote" do
    patch projectnote_url(@projectnote), params: { projectnote: { note_owner: @projectnote.note_owner, project_id: @projectnote.project_id, project_note_date: @projectnote.project_note_date, project_notes: @projectnote.project_notes } }
    assert_redirected_to projectnote_url(@projectnote)
  end

  test "should destroy projectnote" do
    assert_difference('Projectnote.count', -1) do
      delete projectnote_url(@projectnote)
    end

    assert_redirected_to projectnotes_url
  end
end
