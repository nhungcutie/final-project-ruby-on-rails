class Customer < ApplicationRecord
	has_many :bookings
	validates_presence_of :customer_name, :customer_code, :nationality
    validates_uniqueness_of :customer_code
end
