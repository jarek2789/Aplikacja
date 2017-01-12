class PytaController < ApplicationController
  before_action :set_pytum, only: [:show, :edit, :update, :destroy]

  # GET /pyta
  # GET /pyta.json
  def index
    @pyta = Pytum.all
  end

  # GET /pyta/1
  # GET /pyta/1.json
  def show
  end

  # GET /pyta/new
  def new
    @pytum = Pytum.new
  end

  # GET /pyta/1/edit
  def edit
  end

  # POST /pyta
  # POST /pyta.json
  def create
    @pytum = Pytum.new(pytum_params)

    respond_to do |format|
      if @pytum.save
        format.html { redirect_to @pytum, notice: 'Pytum was successfully created.' }
        format.json { render :show, status: :created, location: @pytum }
      else
        format.html { render :new }
        format.json { render json: @pytum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pyta/1
  # PATCH/PUT /pyta/1.json
  def update
    respond_to do |format|
      if @pytum.update(pytum_params)
        format.html { redirect_to @pytum, notice: 'Pytum was successfully updated.' }
        format.json { render :show, status: :ok, location: @pytum }
      else
        format.html { render :edit }
        format.json { render json: @pytum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pyta/1
  # DELETE /pyta/1.json
  def destroy
    @pytum.destroy
    respond_to do |format|
      format.html { redirect_to pyta_url, notice: 'Pytum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pytum
      @pytum = Pytum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pytum_params
      params.require(:pytum).permit(:nazwa, :rodzaj, :gatunek)
    end
end
