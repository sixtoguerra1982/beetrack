class Vehicle < ApplicationRecord
	has_many :gpsmodels
	validates :identifier, presence: true
	validates :identifier, uniqueness: true
end
