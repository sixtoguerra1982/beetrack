class GpsModelsController < ActionController::API
  def create



  	vehicle_identifier = params[:vehicle_identifier]
  	if ! vehicle_identifier.nil?
  		@v = Vehicle.where(identifier: vehicle_identifier).first_or_create	
  	end

  	@gps = GpsModel.new(gpsmodel_params)
  	@gps.vehicle = @v

  	if @gps.save
		render json: {gps: @gps , vehicle: @v}, status: :created
	else
		render json: @gps.errors, status: :unprocessable_entity
	end

  end

  private
    def gpsmodel_params
      params.permit(:latitude, :longitude, :sent_at)
    end
end