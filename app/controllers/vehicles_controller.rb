class VehiclesController < ActionController::API
  def create
  	@vehicle = Vehicle.new(vehicle_params)
	if @vehicle.save
		render json: @vehicule, status: :created, location: @vehicle
	else
		render json: @vehicle.errors, status: :unprocessable_entity
	end
  end

  private
    def vehicle_params
      params.require(:vehicle).permit(:identifier)
    end
end
