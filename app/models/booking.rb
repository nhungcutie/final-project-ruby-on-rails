class Booking < ApplicationRecord
  belongs_to :customer
  has_many :areas
  validates_uniqueness_of :booking_code
end
