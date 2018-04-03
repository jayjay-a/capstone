class SubcontractorStatusesController < ApplicationController
  before_action :set_subcontractor_status, only: [:show, :edit, :update, :destroy]

  # GET /subcontractor_statuses
  # GET /subcontractor_statuses.json
  def index
    @search = SubcontractorStatus.ransack(params[:q]) #for ransack
    @subcontractor_statuses = @search.result
  end

  def search #for ransack
    index
    render :index
  end

  # GET /subcontractor_statuses/1
  # GET /subcontractor_statuses/1.json
  def show
  end

  # GET /subcontractor_statuses/new
  def new
    @subcontractor_status = SubcontractorStatus.new
  end

  # GET /subcontractor_statuses/1/edit
  def edit
  end

  # POST /subcontractor_statuses
  # POST /subcontractor_statuses.json
  def create
    @subcontractor_status = SubcontractorStatus.new(subcontractor_status_params)

    respond_to do |format|
      if @subcontractor_status.save
        format.html { redirect_to @subcontractor_status, notice: 'Subcontractor status was successfully created.' }
        format.json { render :show, status: :created, location: @subcontractor_status }
      else
        format.html { render :new }
        format.json { render json: @subcontractor_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subcontractor_statuses/1
  # PATCH/PUT /subcontractor_statuses/1.json
  def update
    respond_to do |format|
      if @subcontractor_status.update(subcontractor_status_params)
        format.html { redirect_to @subcontractor_status, notice: 'Subcontractor status was successfully updated.' }
        format.json { render :show, status: :ok, location: @subcontractor_status }
      else
        format.html { render :edit }
        format.json { render json: @subcontractor_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subcontractor_statuses/1
  # DELETE /subcontractor_statuses/1.json
  def destroy
    @subcontractor_status.destroy
    respond_to do |format|
      format.html { redirect_to subcontractor_statuses_url, notice: 'Subcontractor status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subcontractor_status
      @subcontractor_status = SubcontractorStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subcontractor_status_params
      params.require(:subcontractor_status).permit(:subcontractor_status_description)
    end
end
