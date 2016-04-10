class Route < ActiveRecord::Base
  has_many :railway_stations_routes
  has_many :railway_stations, through: :railway_stations_routes
  has_many :trains

  def name
    "#{railway_stations.first.title} - #{railway_stations.last.title}" if railway_stations.count >= 2
  end
end