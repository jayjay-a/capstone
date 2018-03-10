class RentallistsController < ApplicationController
  before_action :set_rentallist, only: [:show, :edit, :update, :destroy]

  # GET /rentallists
  # GET /rentallists.json
  def index
    @rentallists = Rentallist.all
  end

  # GET /rentallists/1
  # GET /rentallists/1.json
  def show
  end

  # GET /rentallists/new
  def new
    @rentallist = Rentallist.new
  end

  # GET /rentallists/1/edit
  def edit
  end

  # POST /rentallists
  # POST /rentallists.json
  def create
    @rentallist = Rentallist.new(rentallist_params)

    respond_to do |format|
      if @rentallist.save
        format.html { redirect_to @rentallist, notice: 'Rentallist was successfully created.' }
        format.json { render :show, status: :created, location: @rentallist }
      else
        format.html { render :new }
        format.json { render json: @rentallist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rentallists/1
  # PATCH/PUT /rentallists/1.json
  def update
    respond_to do |format|
      if @rentallist.update(rentallist_params)
        format.html { redirect_to @rentallist, notice: 'Rentallist was successfully updated.' }
        format.json { render :show, status: :ok, location: @rentallist }
      else
        format.html { render :edit }
        format.json { render json: @rentallist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rentallists/1
  # DELETE /rentallists/1.json
  def destroy
    @rentallist.destroy
    respond_to do |format|
      format.html { redirect_to rentallists_url, notice: 'Rentallist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rentallist
      @rentallist = Rentallist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rentallist_params
      params.require(:rentallist).permit(:project_id, :rental_equipment_id, :rental_price, :cost_frequency)
    end
end
