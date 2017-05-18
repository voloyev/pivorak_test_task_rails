class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :bus

  validates :seat, presence: true
  validates :bus_id, presence: true
end
