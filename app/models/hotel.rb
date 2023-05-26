class Hotel < ApplicationRecord
  belongs_to :area
  has_many :rooms
  validates_presence_of :hotel_name, :location
end
