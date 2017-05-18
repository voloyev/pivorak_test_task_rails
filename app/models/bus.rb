class Bus < ApplicationRecord
  has_and_belongs_to_many :bus_stops
<<<<<<< HEAD

  has_many :tickets
  before_save :set_name
=======
  before_save :name
>>>>>>> 5b7e124... Revisit tables structure; add a little bit validations

  validates :from, presence: true
  validates :to, presence: true

  protected

<<<<<<< HEAD
  def set_name
    self.name = self.from.to_s + '-' + self.to.to_s
  end

  def create_tickets
    self.seats.times do |i = 0|
      i += 1
      self.tickets << Ticket.create(seat: i, bus_id: self.id)
    end
  end
=======
  def name
    self.name = self.from.to_s + '-' + self.to.to_s
  end
>>>>>>> 5b7e124... Revisit tables structure; add a little bit validations
end
