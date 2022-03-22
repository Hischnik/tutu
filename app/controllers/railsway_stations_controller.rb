class RailswayStationsController < ApplicationController
  before_action :set_railsway_station, only: %i[ show edit update destroy ]

  # GET /railsway_stations or /railsway_stations.json
  def index
    @railsway_stations = RailswayStation.all
  end

  # GET /railsway_stations/1 or /railsway_stations/1.json
  def show
  end

  # GET /railsway_stations/new
  def new
    @railsway_station = RailswayStation.new
  end

  # GET /railsway_stations/1/edit
  def edit
  end

  # POST /railsway_stations or /railsway_stations.json
  def create
    @railsway_station = RailswayStation.new(railsway_station_params)

    respond_to do |format|
      if @railsway_station.save
        format.html { redirect_to railsway_station_url(@railsway_station), notice: "Railsway station was successfully created." }
        format.json { render :show, status: :created, location: @railsway_station }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @railsway_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /railsway_stations/1 or /railsway_stations/1.json
  def update
    respond_to do |format|
      if @railsway_station.update(railsway_station_params)
        format.html { redirect_to railsway_station_url(@railsway_station), notice: "Railsway station was successfully updated." }
        format.json { render :show, status: :ok, location: @railsway_station }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @railsway_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /railsway_stations/1 or /railsway_stations/1.json
  def destroy
    @railsway_station.destroy

    respond_to do |format|
      format.html { redirect_to railsway_stations_url, notice: "Railsway station was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_railsway_station
      @railsway_station = RailswayStation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def railsway_station_params
      params.require(:railsway_station).permit(:title)
    end
end
