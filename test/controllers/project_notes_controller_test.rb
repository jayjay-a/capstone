require 'test_helper'

class ProjectNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_note = project_notes(:one)
  end

  test "should get index" do
    get project_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_project_note_url
    assert_response :success
  end

  test "should create project_note" do
    assert_difference('ProjectNote.count') do
      post project_notes_url, params: { project_note: { note_owner: @project_note.note_owner, project_id: @project_note.project_id, project_note_date: @project_note.project_note_date, project_notes: @project_note.project_notes } }
    end

    assert_redirected_to project_note_url(ProjectNote.last)
  end

  test "should show project_note" do
    get project_note_url(@project_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_note_url(@project_note)
    assert_response :success
  end

  test "should update project_note" do
    patch project_note_url(@project_note), params: { project_note: { note_owner: @project_note.note_owner, project_id: @project_note.project_id, project_note_date: @project_note.project_note_date, project_notes: @project_note.project_notes } }
    assert_redirected_to project_note_url(@project_note)
  end

  test "should destroy project_note" do
    assert_difference('ProjectNote.count', -1) do
      delete project_note_url(@project_note)
    end

    assert_redirected_to project_notes_url
  end
end
