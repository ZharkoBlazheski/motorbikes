class MotorbikesController < ApplicationController
  before_action :set_motorbike, only: %i[ show edit update destroy ]

  # GET /motorbikes or /motorbikes.json
  def index
    @motorbikes = Motorbike.all
  end

  # GET /motorbikes/1 or /motorbikes/1.json
  def show
  end

  # GET /motorbikes/new
  def new
    @motorbike = Motorbike.new
  end

  # GET /motorbikes/1/edit
  def edit
  end

  # POST /motorbikes or /motorbikes.json
  def create
    @motorbike = Motorbike.new(motorbike_params)

    respond_to do |format|
      if @motorbike.save
        format.html { redirect_to motorbike_url(@motorbike), notice: "Motorbike was successfully created." }
        format.json { render :show, status: :created, location: @motorbike }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @motorbike.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /motorbikes/1 or /motorbikes/1.json
  def update
    respond_to do |format|
      if @motorbike.update(motorbike_params)
        format.html { redirect_to motorbike_url(@motorbike), notice: "Motorbike was successfully updated." }
        format.json { render :show, status: :ok, location: @motorbike }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @motorbike.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /motorbikes/1 or /motorbikes/1.json
  def destroy
    @motorbike.destroy

    respond_to do |format|
      format.html { redirect_to motorbikes_url, notice: "Motorbike was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_motorbike
      @motorbike = Motorbike.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def motorbike_params
      params.require(:motorbike).permit(:name, :model, :year)
    end
end
