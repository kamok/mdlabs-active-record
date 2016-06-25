class AnalytesController < ApplicationController
  before_action :set_analyte, only: [:show, :edit, :update, :destroy]

  # GET /analytes
  def index
    @analytes = Analyte.all
  end

  # GET /analytes/1
  def show
  end

  # GET /analytes/new
  def new
    @analyte = Analyte.new
  end

  # GET /analytes/1/edit
  def edit
  end

  # POST /analytes
  def create
    @analyte = Analyte.new(analyte_params)

    if @analyte.save
      redirect_to @analyte, notice: 'Analyte was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /analytes/1
  def update
    if @analyte.update(analyte_params)
      redirect_to @analyte, notice: 'Analyte was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /analytes/1
  def destroy
    @analyte.destroy
    redirect_to analytes_url, notice: 'Analyte was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_analyte
      @analyte = Analyte.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def analyte_params
      params.require(:analyte).permit(:analyte_name, :result_range)
    end
end
