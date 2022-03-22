require "application_system_test_case"

class RailswayStationsTest < ApplicationSystemTestCase
  setup do
    @railsway_station = railsway_stations(:one)
  end

  test "visiting the index" do
    visit railsway_stations_url
    assert_selector "h1", text: "Railsway stations"
  end

  test "should create railsway station" do
    visit railsway_stations_url
    click_on "New railsway station"

    fill_in "Title", with: @railsway_station.title
    click_on "Create Railsway station"

    assert_text "Railsway station was successfully created"
    click_on "Back"
  end

  test "should update Railsway station" do
    visit railsway_station_url(@railsway_station)
    click_on "Edit this railsway station", match: :first

    fill_in "Title", with: @railsway_station.title
    click_on "Update Railsway station"

    assert_text "Railsway station was successfully updated"
    click_on "Back"
  end

  test "should destroy Railsway station" do
    visit railsway_station_url(@railsway_station)
    click_on "Destroy this railsway station", match: :first

    assert_text "Railsway station was successfully destroyed"
  end
end
