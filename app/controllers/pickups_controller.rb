class PickupsController < ApplicationController
  before_action :set_pickup, only: %i[ show update destroy ]

  # GET /pickups
  def index
    @pickups = Pickup.all

    render json: @pickups
  end

  # GET /pickups/1
  def show
    render json: @pickup
  end

  # POST /pickups
  def create
    @pickup = Pickup.new(pickup_params)

    if @pickup.save
      render json: @pickup, status: :created, location: @pickup
    else
      render json: @pickup.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pickups/1
  def update
    if @pickup.update(pickup_params)
      render json: @pickup
    else
      render json: @pickup.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pickups/1
  def destroy
    @pickup.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pickup
      @pickup = Pickup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pickup_params
      params.require(:pickup).permit(:name, :trip_id, :client_id)
    end
end
