class ProjectNotesController < ApplicationController
  load_and_authorize_resource 
  before_action :set_project_note, only: [:show, :edit, :update, :destroy]

  # GET /project_notes
  # GET /project_notes.json
  def index
    if user_signed_in?
      @search = ProjectNote.ransack(params[:q]) #for ransack
      @project_notes = @search.result
    else
      redirect_to new_user_session_path
    end
  end

  def search #for ransack
    index
    render :index
  end

  # GET /project_notes/1
  # GET /project_notes/1.json
  def show
  end

  # GET /project_notes/new
  def new
    @project_note = ProjectNote.new
  end

  # GET /project_notes/1/edit
  def edit
  end

  # POST /project_notes
  # POST /project_notes.json
  def create
    @project_note = ProjectNote.new(project_note_params)

    respond_to do |format|
      if @project_note.save
        format.html { redirect_to @project_note, notice: 'Project note was successfully created.' }
        format.json { render :show, status: :created, location: @project_note }
      else
        format.html { render :new }
        format.json { render json: @project_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_notes/1
  # PATCH/PUT /project_notes/1.json
  def update
    respond_to do |format|
      if @project_note.update(project_note_params)
        format.html { redirect_to @project_note, notice: 'Project note was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_note }
      else
        format.html { render :edit }
        format.json { render json: @project_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_notes/1
  # DELETE /project_notes/1.json
  def destroy
    @project_note.destroy
    respond_to do |format|
      format.html { redirect_to project_notes_url, notice: 'Project note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_note
      @project_note = ProjectNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_note_params
      params.require(:project_note).permit(:project_id, :project_notes, :project_note_date, :project_note_owner)
    end
end
