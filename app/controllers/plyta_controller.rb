class PlytaController < ApplicationController
  before_action :set_plytum, only: [:show, :edit, :update, :destroy]

  # GET /plyta
  # GET /plyta.json
  def index
    @plyta = Plytum.all
  end

  # GET /plyta/1
  # GET /plyta/1.json
  def show
  end

  # GET /plyta/new
  def new
    @plytum = Plytum.new
  end

  # GET /plyta/1/edit
  def edit
  end

  # POST /plyta
  # POST /plyta.json
  def create
    @plytum = Plytum.new(plytum_params)

    respond_to do |format|
      if @plytum.save
        format.html { redirect_to @plytum, notice: 'Plytum was successfully created.' }
        format.json { render :show, status: :created, location: @plytum }
      else
        format.html { render :new }
        format.json { render json: @plytum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plyta/1
  # PATCH/PUT /plyta/1.json
  def update
    respond_to do |format|
      if @plytum.update(plytum_params)
        format.html { redirect_to @plytum, notice: 'Plytum was successfully updated.' }
        format.json { render :show, status: :ok, location: @plytum }
      else
        format.html { render :edit }
        format.json { render json: @plytum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plyta/1
  # DELETE /plyta/1.json
  def destroy
    @plytum.destroy
    respond_to do |format|
      format.html { redirect_to plyta_url, notice: 'Plytum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plytum
      @plytum = Plytum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plytum_params
      params.require(:plytum).permit(:nazwa, :rodzaj, :gatunek)
    end
end
