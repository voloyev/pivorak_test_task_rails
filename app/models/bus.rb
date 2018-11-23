class Bus < ApplicationRecord
  has_and_belongs_to_many :bus_stops
  has_many :tickets

  before_save :set_name
  after_create :create_tickets

  validates :from, presence: true
  validates :to, presence: true

  protected

  def set_name
    name = from.to_s + '-' + to.to_s
  end

  def create_tickets
    seats.times do |i = 0|
      i += 1
      tickets << Ticket.create(seat: i, bus_id: self.id)
    end
  end
end
