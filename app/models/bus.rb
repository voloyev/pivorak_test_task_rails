class Bus < ApplicationRecord
  has_and_belongs_to_many :bus_stops
end
