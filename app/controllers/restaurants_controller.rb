class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    find_restaurant
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    # @restaurant.save
    redirect_to @restaurant
    #validation
  end

  def edit
    find_restaurant
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant(params))
    #validation
  end

  def destroy
    find_restaurant.destroy
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :yelp_identifier, :image_url, :yelp_page, :price, :rating, :review_count, :photos, :demonym, :demonym_alias, :origin_nation, :nation_id, :neighborhood_id)
  end


end
