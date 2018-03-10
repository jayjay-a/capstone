class RentalequipmentsController < ApplicationController
  before_action :set_rentalequipment, only: [:show, :edit, :update, :destroy]

  # GET /rentalequipments
  # GET /rentalequipments.json
  def index
    @rentalequipments = Rentalequipment.all
  end

  # GET /rentalequipments/1
  # GET /rentalequipments/1.json
  def show
  end

  # GET /rentalequipments/new
  def new
    @rentalequipment = Rentalequipment.new
  end

  # GET /rentalequipments/1/edit
  def edit
  end

  # POST /rentalequipments
  # POST /rentalequipments.json
  def create
    @rentalequipment = Rentalequipment.new(rentalequipment_params)

    respond_to do |format|
      if @rentalequipment.save
        format.html { redirect_to @rentalequipment, notice: 'Rentalequipment was successfully created.' }
        format.json { render :show, status: :created, location: @rentalequipment }
      else
        format.html { render :new }
        format.json { render json: @rentalequipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rentalequipments/1
  # PATCH/PUT /rentalequipments/1.json
  def update
    respond_to do |format|
      if @rentalequipment.update(rentalequipment_params)
        format.html { redirect_to @rentalequipment, notice: 'Rentalequipment was successfully updated.' }
        format.json { render :show, status: :ok, location: @rentalequipment }
      else
        format.html { render :edit }
        format.json { render json: @rentalequipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rentalequipments/1
  # DELETE /rentalequipments/1.json
  def destroy
    @rentalequipment.destroy
    respond_to do |format|
      format.html { redirect_to rentalequipments_url, notice: 'Rentalequipment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rentalequipment
      @rentalequipment = Rentalequipment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rentalequipment_params
      params.require(:rentalequipment).permit(:rental_description)
    end
end
