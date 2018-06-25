class NeighborhoodsController < ApplicationController

  def index
    @neighborhoods = Neighborhood.all
  end

  def show
    find_neighborhood
  end

  def new
    @neighborhood = Neighborhood.new
  end

  def create
    @neighborhood.new(neighborhood(params))
    #validation
  end

  def edit
    find_neighborhood
  end

  def update
    @neighborhood = Neighborhood.find(params[:id])
    @neighborhood.update(neighborhood(params))
    #validation
  end

  def destroy
    find_neighborhood.destroy
  end

  private

  def find_neighborhood
    @neighborhood = Neighborhood.find(params[:id])
  end

  def neighborhood_params
    params.require(:neighborhood).permit(:name, :borough_id)
  end


end
