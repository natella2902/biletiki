class RailwayStation < ActiveRecord::Base
  has_many :trains
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes
  has_many :tickets

  validates :title, presence: true

  def set_station_route(route, position)
    @railway_station_route = railway_station_route(position: position).where(route: route)
  end


end
