class ProjectnotesController < ApplicationController
  before_action :set_projectnote, only: [:show, :edit, :update, :destroy]

  # GET /projectnotes
  # GET /projectnotes.json
  def index
    @projectnotes = Projectnote.all
  end

  # GET /projectnotes/1
  # GET /projectnotes/1.json
  def show
  end

  # GET /projectnotes/new
  def new
    @projectnote = Projectnote.new
  end

  # GET /projectnotes/1/edit
  def edit
  end

  # POST /projectnotes
  # POST /projectnotes.json
  def create
    @projectnote = Projectnote.new(projectnote_params)

    respond_to do |format|
      if @projectnote.save
        format.html { redirect_to @projectnote, notice: 'Projectnote was successfully created.' }
        format.json { render :show, status: :created, location: @projectnote }
      else
        format.html { render :new }
        format.json { render json: @projectnote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projectnotes/1
  # PATCH/PUT /projectnotes/1.json
  def update
    respond_to do |format|
      if @projectnote.update(projectnote_params)
        format.html { redirect_to @projectnote, notice: 'Projectnote was successfully updated.' }
        format.json { render :show, status: :ok, location: @projectnote }
      else
        format.html { render :edit }
        format.json { render json: @projectnote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projectnotes/1
  # DELETE /projectnotes/1.json
  def destroy
    @projectnote.destroy
    respond_to do |format|
      format.html { redirect_to projectnotes_url, notice: 'Projectnote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projectnote
      @projectnote = Projectnote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projectnote_params
      params.require(:projectnote).permit(:project_id, :project_notes, :project_note_date, :note_owner)
    end
end
