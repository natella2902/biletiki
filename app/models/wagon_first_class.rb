class WagonFirstClass < Wagon
  validates :side_bottom_place, :side_top_place, :top_place, :bottom_place, presence: true
end