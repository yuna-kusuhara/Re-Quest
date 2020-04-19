class MapsController < ApplicationController

  def new
    @map = Map.new
  end

  def create
    Map.create(map_params)
    redirect_to root_path
  end

  def show
    @map = Map.find(params[:id])
    gon.showlat = @map.latitude.to_f
    gon.showlon = @map.longitude.to_f
  end

  private

  def map_params
    params.require(:map).permit(:title, :coment, :latitude, :longitude)
  end

end
