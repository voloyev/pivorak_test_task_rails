class Bus < ApplicationRecord
  has_and_belongs_to_many :bus_stops

  has_many :tickets
  before_save :set_name

  validates :from, presence: true
  validates :to, presence: true

  protected

  def set_name
    self.name = self.from.to_s + '-' + self.to.to_s
  end

  def create_tickets
    self.seats.times do |i = 0|
      i += 1
      self.tickets << Ticket.create(seat: i, bus_id: self.id)
    end
  end
end
