class Wagon < ActiveRecord::Base
  belongs_to :train
  before_validation :set_number, on: :create
  validates :number, uniqueness: {scope: :train_id }
  scope :premium, -> {where(type: 'WagonPremium')}
  scope :coupe, -> {where(type: 'WagonCoupe')}
  scope :coupe, -> {where(type: 'WagonSecondClass')}

  protected
  def set_number
    max_wagon = self.train.wagons.maximum(:number) || 0
    self.number = max_wagon + 1
  end

end