class ContinentsController < ApplicationController

  def index
    @continents = Continent.all
  end

  def show
    find_continent
  end

  def new
    @continent = Continent.new
  end

  def create
    @continent.new(continent(params))
    #validation
  end

  def edit
    find_continent
  end

  def update
    @continent = Continent.find(params[:id])
    @continent.update(continent(params))
    #validation
  end

  def destroy
    find_continent.destroy
  end

  private

  def find_continent
    @continent = Continent.find(params[:id])
  end

  def continent_params
    params.require(:continent).permit(:name)
  end


end
