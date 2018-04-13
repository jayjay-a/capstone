class TaskNotesController < ApplicationController
  load_and_authorize_resource 
  before_action :set_task_note, only: [:show, :edit, :update, :destroy]

  # GET /task_notes
  # GET /task_notes.json
  def index
    if user_signed_in?
      @search = TaskNote.ransack(params[:q]) #for ransack
      @task_notes = @search.result.order("created_at DESC").page(params[:page]).per(50)
    else
      redirect_to new_user_session_path
    end
  end

  def search #for ransack
    index
    render :index
  end

  def search #for ransack
    index
    render :index
  end

  # GET /task_notes/1
  # GET /task_notes/1.json
  def show
  end

  # GET /task_notes/new
  def new
    @task_note = TaskNote.new
  end

  # GET /task_notes/1/edit
  def edit
  end

  # POST /task_notes
  # POST /task_notes.json
  def create
    @task_note = TaskNote.new(task_note_params)

    respond_to do |format|
      if @task_note.save
        format.html { redirect_to @task_note, notice: 'Task note was successfully created.' }
        format.json { render :show, status: :created, location: @task_note }
      else
        format.html { render :new }
        format.json { render json: @task_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /task_notes/1
  # PATCH/PUT /task_notes/1.json
  def update
    respond_to do |format|
      if @task_note.update(task_note_params)
        format.html { redirect_to @task_note, notice: 'Task note was successfully updated.' }
        format.json { render :show, status: :ok, location: @task_note }
      else
        format.html { render :edit }
        format.json { render json: @task_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task_notes/1
  # DELETE /task_notes/1.json
  def destroy
    @task_note.destroy
    respond_to do |format|
      format.html { redirect_to task_notes_url, notice: 'Task note was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_note
      @task_note = TaskNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_note_params
      params.require(:task_note).permit(:task_id, :task_notes, :task_note_owner, :task_note_date)
    end
end
