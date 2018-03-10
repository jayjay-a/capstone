class ProjectstatusesController < ApplicationController
  before_action :set_projectstatus, only: [:show, :edit, :update, :destroy]

  # GET /projectstatuses
  # GET /projectstatuses.json
  def index
    @projectstatuses = Projectstatus.all
  end

  # GET /projectstatuses/1
  # GET /projectstatuses/1.json
  def show
  end

  # GET /projectstatuses/new
  def new
    @projectstatus = Projectstatus.new
  end

  # GET /projectstatuses/1/edit
  def edit
  end

  # POST /projectstatuses
  # POST /projectstatuses.json
  def create
    @projectstatus = Projectstatus.new(projectstatus_params)

    respond_to do |format|
      if @projectstatus.save
        format.html { redirect_to @projectstatus, notice: 'Projectstatus was successfully created.' }
        format.json { render :show, status: :created, location: @projectstatus }
      else
        format.html { render :new }
        format.json { render json: @projectstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projectstatuses/1
  # PATCH/PUT /projectstatuses/1.json
  def update
    respond_to do |format|
      if @projectstatus.update(projectstatus_params)
        format.html { redirect_to @projectstatus, notice: 'Projectstatus was successfully updated.' }
        format.json { render :show, status: :ok, location: @projectstatus }
      else
        format.html { render :edit }
        format.json { render json: @projectstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projectstatuses/1
  # DELETE /projectstatuses/1.json
  def destroy
    @projectstatus.destroy
    respond_to do |format|
      format.html { redirect_to projectstatuses_url, notice: 'Projectstatus was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projectstatus
      @projectstatus = Projectstatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projectstatus_params
      params.require(:projectstatus).permit(:project_status_description)
    end
end
