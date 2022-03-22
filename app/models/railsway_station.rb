class RailswayStation < ActiveRecord::Base
  validates :title, presence: true

  # указываем что к станции принадлежит много поездов
  has_many :trains

  # has_and_belongs_to_many :routes 

  has_many :railsway_stations_routes
  has_many :routes, through: :railsway_stations_routes
end
