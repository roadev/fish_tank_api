class MeasurementTypesController < ApplicationController
  before_action :set_measurement_type, only: %i[ show update destroy ]

  # GET /measurement_types
  def index
    @measurement_types = MeasurementType.all

    render json: @measurement_types
  end

  # GET /measurement_types/1
  def show
    render json: @measurement_type
  end

  # POST /measurement_types
  def create
    @measurement_type = MeasurementType.new(measurement_type_params)

    if @measurement_type.save
      render json: @measurement_type, status: :created, location: @measurement_type
    else
      render json: @measurement_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /measurement_types/1
  def update
    if @measurement_type.update(measurement_type_params)
      render json: @measurement_type
    else
      render json: @measurement_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /measurement_types/1
  def destroy
    @measurement_type.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_measurement_type
      @measurement_type = MeasurementType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def measurement_type_params
      params.require(:measurement_type).permit(:name, :description, :source_link)
    end
end
