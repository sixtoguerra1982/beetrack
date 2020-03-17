class Vehicle < ApplicationRecord
	validates :identifier, presence: true
	validates :identifier, uniqueness: true
end
