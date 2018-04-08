class RentalEquipmentsController < ApplicationController
  load_and_authorize_resource 
  before_action :set_rental_equipment, only: [:show, :edit, :update, :destroy]

  # GET /rental_equipments
  # GET /rental_equipments.json
  def index
    if user_signed_in?
      @search = RentalEquipment.ransack(params[:q]) #for ransack
      @rental_equipments = @search.result
    else
      redirect_to new_user_session_path
    end
  end

  def search #for ransack
    index
    render :index
  end

  # GET /rental_equipments/1
  # GET /rental_equipments/1.json
  def show
  end

  # GET /rental_equipments/new
  def new
    @rental_equipment = RentalEquipment.new
  end

  # GET /rental_equipments/1/edit
  def edit
  end

  # POST /rental_equipments
  # POST /rental_equipments.json
  def create
    @rental_equipment = RentalEquipment.new(rental_equipment_params)

    respond_to do |format|
      if @rental_equipment.save
        format.html { redirect_to @rental_equipment, notice: 'Rental equipment was successfully created.' }
        format.json { render :show, status: :created, location: @rental_equipment }
      else
        format.html { render :new }
        format.json { render json: @rental_equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rental_equipments/1
  # PATCH/PUT /rental_equipments/1.json
  def update
    respond_to do |format|
      if @rental_equipment.update(rental_equipment_params)
        format.html { redirect_to @rental_equipment, notice: 'Rental equipment was successfully updated.' }
        format.json { render :show, status: :ok, location: @rental_equipment }
      else
        format.html { render :edit }
        format.json { render json: @rental_equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rental_equipments/1
  # DELETE /rental_equipments/1.json
  def destroy
    @rental_equipment.destroy
    respond_to do |format|
      format.html { redirect_to rental_equipments_url, notice: 'Rental equipment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rental_equipment
      @rental_equipment = RentalEquipment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rental_equipment_params
      params.require(:rental_equipment).permit(:rental_description)
    end
end
