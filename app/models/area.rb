class Area < ApplicationRecord
	has_many :bookings
	has_many :hotels
	validates_presence_of :place_code, :description
	validates_uniqueness_of :place_code
end
