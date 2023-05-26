class Booking < ApplicationRecord
  belongs_to :customer
  has_many :areas
  validate_presence_of :booking_code
  validates_uniqueness_of :booking_code
end
