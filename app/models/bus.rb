class Bus < ApplicationRecord
  has_and_belongs_to_many :bus_stops
  before_save :name

  validates :from, presence: true
  validates :to, presence: true

  protected

  def name
    self.name = self.from.to_s + '-' + self.to.to_s
  end
end
