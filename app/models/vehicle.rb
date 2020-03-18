class Vehicle < ApplicationRecord
	has_many :GpsModels, dependent: :destroy
	validates :identifier, presence: true
	validates :identifier, uniqueness: true
end
