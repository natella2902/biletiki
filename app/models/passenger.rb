class Passenger < ActiveRecord::Base
  has_many :tickets
  validates :name, presence: true
end
