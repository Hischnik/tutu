class CreateStationsRoutes < ActiveRecord::Migration[7.0]
  def change
    create_table :railsway_stations_routes do |t|
      t.integer :railsway_station_id
      t.integer :route_id
      # далее нам нужно связать эти таблицы в route.rb и railsway_station.rb
    end
  end
end
