class AddRailswayStationIdToTrains < ActiveRecord::Migration[7.0]
  def change
    # add_column :trains, :railway_station_id, :integer
    # что бы этот фаил появился нужно в терминале:
    # rails g migration AddRailwayStationIdToTrains
    # далее создадим связь

      # add_belongs_to :trains, :railsway_station

    # и после этого в терминале
    # rake db:migrate
    # далее в модель train.rb

    # если мы хотим изменить название, то откатываем миграцию
    # rake db:rollback
    # меняем

    add_belongs_to :trains, :current_station

    # rake db:migrate
    # и делвем изменения в train.rb
  end
end
