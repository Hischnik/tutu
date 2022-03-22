class Route < ActiveRecord::Base

    # has_and_belongs_to_many :railsway_stations

  # это плохой способ связывать таблицы
  # создаем в папке models railsway_stations_route.rb
  # тут переписываем

  has_many :railsway_stations_routes
  has_many :railsway_stations, through: :railsway_stations_routes

  validates :name, presence: true
end
