class BusStop < ApplicationRecord
  has_and_belongs_to_many :buses
end
