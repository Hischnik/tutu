class Train < ActiveRecord::Base
  validates :number, presence: true

  # связь на уровне моделей

  # belongs_to :railsway_station

  # далее в фаил railsway_station

  # после изменения названия
  belongs_to :current_station, class_name: "RailswayStation", foreign_key: :current_station_id
end