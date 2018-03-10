class MateriallistsController < ApplicationController
  before_action :set_materiallist, only: [:show, :edit, :update, :destroy]

  # GET /materiallists
  # GET /materiallists.json
  def index
    @materiallists = Materiallist.all
  end

  # GET /materiallists/1
  # GET /materiallists/1.json
  def show
  end

  # GET /materiallists/new
  def new
    @materiallist = Materiallist.new
  end

  # GET /materiallists/1/edit
  def edit
  end

  # POST /materiallists
  # POST /materiallists.json
  def create
    @materiallist = Materiallist.new(materiallist_params)

    respond_to do |format|
      if @materiallist.save
        format.html { redirect_to @materiallist, notice: 'Materiallist was successfully created.' }
        format.json { render :show, status: :created, location: @materiallist }
      else
        format.html { render :new }
        format.json { render json: @materiallist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /materiallists/1
  # PATCH/PUT /materiallists/1.json
  def update
    respond_to do |format|
      if @materiallist.update(materiallist_params)
        format.html { redirect_to @materiallist, notice: 'Materiallist was successfully updated.' }
        format.json { render :show, status: :ok, location: @materiallist }
      else
        format.html { render :edit }
        format.json { render json: @materiallist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materiallists/1
  # DELETE /materiallists/1.json
  def destroy
    @materiallist.destroy
    respond_to do |format|
      format.html { redirect_to materiallists_url, notice: 'Materiallist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_materiallist
      @materiallist = Materiallist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def materiallist_params
      params.require(:materiallist).permit(:project_id, :material_id, :unit_price, :quantity)
    end
end
