class RailwayStationsRoute < ActiveRecord::Base
  belongs_to :railway_station
  belongs_to :route

  default_scope -> { order(:position) }

  before_save do
    # self.position = self.route.railway_stations_routes.maximum(:position) + 1
   self.position = (RailwayStationsRoute.where(route_id: self.route_id).maximum(:position) || 0) + 1
  end
end