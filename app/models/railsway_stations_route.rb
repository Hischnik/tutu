class RailswayStationsRoute < ActiveRecord::Base
  belongs_to :railsway_station
  belongs_to :route
end