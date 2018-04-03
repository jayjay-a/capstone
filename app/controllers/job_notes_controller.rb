class JobNotesController < ApplicationController
  before_action :set_job_note, only: [:show, :edit, :update, :destroy]

  # GET /job_notes
  # GET /job_notes.json
  def index
    @search = JobNote.ransack(params[:q]) #for ransack
    @job_notes = @search.result
  end

  def search #for ransack
    index
    render :index
  end

  # GET /job_notes/1
  # GET /job_notes/1.json
  def show
  end

  # GET /job_notes/new
  def new
    @job_note = JobNote.new
  end

  # GET /job_notes/1/edit
  def edit
  end

  # POST /job_notes
  # POST /job_notes.json
  def create
    @job_note = JobNote.new(job_note_params)

    respond_to do |format|
      if @job_note.save
        format.html { redirect_to @job_note, notice: 'Job note was successfully created.' }
        format.json { render :show, status: :created, location: @job_note }
      else
        format.html { render :new }
        format.json { render json: @job_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_notes/1
  # PATCH/PUT /job_notes/1.json
  def update
    respond_to do |format|
      if @job_note.update(job_note_params)
        format.html { redirect_to @job_note, notice: 'Job note was successfully updated.' }
        format.json { render :show, status: :ok, location: @job_note }
      else
        format.html { render :edit }
        format.json { render json: @job_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_notes/1
  # DELETE /job_notes/1.json
  def destroy
    @job_note.destroy
    respond_to do |format|
      format.html { redirect_to job_notes_url, notice: 'Job note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_note
      @job_note = JobNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_note_params
      params.require(:job_note).permit(:job_id, :job_notes, :job_notes_owner, :job_notes_date)
    end
end
