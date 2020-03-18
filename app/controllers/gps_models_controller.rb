class GpsModelsController < ActionController::API
  def create
  	vehicle_identifier = params[:vehicle_identifier]
  	if ! vehicle_identifier.nil?
  		@v = Vehicle.where(identifier: vehicle_identifier).first_or_create
  		render json: { identifier: @v.identifier }
  	end
  end

  private
    def gpsmodel_params
      params.require(:vehicle).permit(:identifier)
    end

end
