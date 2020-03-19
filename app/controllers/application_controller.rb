class ApplicationController < ActionController::Base
	def show
		@vehicles = Vehicle.all.order(:id)

		@points = []

		@vehicles.each do |v|
			if v.GpsModels.present?
				h = {"vehicle" => v.identifier.chomp.to_s, "sent_at" => v.GpsModels.last.sent_at, "latitude" => v.GpsModels.last.latitude, "longitude" => v.GpsModels.last.longitude}
				@points.push h
			end
		end

	end
end
