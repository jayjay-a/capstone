require 'test_helper'

class JobNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_note = job_notes(:one)
  end

  test "should get index" do
    get job_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_job_note_url
    assert_response :success
  end

  test "should create job_note" do
    assert_difference('JobNote.count') do
      post job_notes_url, params: { job_note: { job_id: @job_note.job_id, job_notes: @job_note.job_notes, job_notes_date: @job_note.job_notes_date, job_notes_owner: @job_note.job_notes_owner } }
    end

    assert_redirected_to job_note_url(JobNote.last)
  end

  test "should show job_note" do
    get job_note_url(@job_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_note_url(@job_note)
    assert_response :success
  end

  test "should update job_note" do
    patch job_note_url(@job_note), params: { job_note: { job_id: @job_note.job_id, job_notes: @job_note.job_notes, job_notes_date: @job_note.job_notes_date, job_notes_owner: @job_note.job_notes_owner } }
    assert_redirected_to job_note_url(@job_note)
  end

  test "should destroy job_note" do
    assert_difference('JobNote.count', -1) do
      delete job_note_url(@job_note)
    end

    assert_redirected_to job_notes_url
  end
end
