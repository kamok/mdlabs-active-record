class SpecimenController < ApplicationController
  before_action :set_speciman, only: [:show, :edit, :update, :destroy]

  # GET /specimen
  def index
    @specimen = Speciman.all
  end

  # GET /specimen/1
  def show
  end

  # GET /specimen/new
  def new
    @speciman = Speciman.new
  end

  # GET /specimen/1/edit
  def edit
  end

  # POST /specimen
  def create
    @speciman = Speciman.new(speciman_params)

    if @speciman.save
      redirect_to @speciman, notice: 'Speciman was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /specimen/1
  def update
    if @speciman.update(speciman_params)
      redirect_to @speciman, notice: 'Speciman was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /specimen/1
  def destroy
    @speciman.destroy
    redirect_to specimen_url, notice: 'Speciman was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_speciman
      @speciman = Speciman.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def speciman_params
      params.require(:speciman).permit(:sample_name, :date_received, :sample_type)
    end
end
