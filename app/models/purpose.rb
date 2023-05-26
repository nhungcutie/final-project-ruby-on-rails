class Purpose < ApplicationRecord
  belongs_to :customer
  belongs_to :booking
end
