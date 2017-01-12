class WypozyczeniesController < ApplicationController
  before_action :set_wypozyczeny, only: [:show, :edit, :update, :destroy]

  # GET /wypozyczenies
  # GET /wypozyczenies.json
  def index
    @wypozyczenies = Wypozyczenie.all
  end

  # GET /wypozyczenies/1
  # GET /wypozyczenies/1.json
  def show
  end

  # GET /wypozyczenies/new
  def new
    @wypozyczeny = Wypozyczenie.new
  end

  # GET /wypozyczenies/1/edit
  def edit
  end

  # POST /wypozyczenies
  # POST /wypozyczenies.json
  def create
    @wypozyczeny = Wypozyczenie.new(wypozyczeny_params)

    respond_to do |format|
      if @wypozyczeny.save
        format.html { redirect_to @wypozyczeny, notice: 'Wypozyczenie was successfully created.' }
        format.json { render :show, status: :created, location: @wypozyczeny }
      else
        format.html { render :new }
        format.json { render json: @wypozyczeny.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wypozyczenies/1
  # PATCH/PUT /wypozyczenies/1.json
  def update
    respond_to do |format|
      if @wypozyczeny.update(wypozyczeny_params)
        format.html { redirect_to @wypozyczeny, notice: 'Wypozyczenie was successfully updated.' }
        format.json { render :show, status: :ok, location: @wypozyczeny }
      else
        format.html { render :edit }
        format.json { render json: @wypozyczeny.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wypozyczenies/1
  # DELETE /wypozyczenies/1.json
  def destroy
    @wypozyczeny.destroy
    respond_to do |format|
      format.html { redirect_to wypozyczenies_url, notice: 'Wypozyczenie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wypozyczeny
      @wypozyczeny = Wypozyczenie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wypozyczeny_params
      params.require(:wypozyczeny).permit(:Kliient, :Album)
    end
end
