class EmployeeStatusesController < ApplicationController
  load_and_authorize_resource 
  before_action :set_employee_status, only: [:show, :edit, :update, :destroy]

  # GET /employee_statuses
  # GET /employee_statuses.json
  def index
    if user_signed_in?
      @search = EmployeeStatus.ransack(params[:q]) #for ransack
      @employee_statuses = @search.result.order("created_at DESC").page(params[:page]).per(50)
    else
      redirect_to new_user_session_path
    end
  end

  def search #for ransack
    index
    render :index
  end


  # GET /employee_statuses/1
  # GET /employee_statuses/1.json
  def show
  end

  # GET /employee_statuses/new
  def new
    @employee_status = EmployeeStatus.new
  end

  # GET /employee_statuses/1/edit
  def edit
  end

  # POST /employee_statuses
  # POST /employee_statuses.json
  def create
    @employee_status = EmployeeStatus.new(employee_status_params)

    respond_to do |format|
      if @employee_status.save
        format.html { redirect_to employee_statuses_url, notice: 'Employee status was successfully created.' }
        format.json { render :show, status: :created, location: @employee_status }
      else
        format.html { render :new }
        format.json { render json: @employee_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_statuses/1
  # PATCH/PUT /employee_statuses/1.json
  def update
    respond_to do |format|
      if @employee_status.update(employee_status_params)
        format.html { redirect_to @employee_status, notice: 'Employee status was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee_status }
      else
        format.html { render :edit }
        format.json { render json: @employee_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_statuses/1
  # DELETE /employee_statuses/1.json
  def destroy
    @employee_status.destroy
    respond_to do |format|
      format.html { redirect_to employee_statuses_url, notice: 'Employee status was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_status
      @employee_status = EmployeeStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_status_params
      params.require(:employee_status).permit(:employee_status_description)
    end
end
