class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    @restaurant.save ? ( redirect_to @restaurant ):( render 'new' )
  end

  def new
    @restaurant = Restaurant.new
  end

  def update
    @restaurant = Restaurant.find(params[:id])

    @restaurant.update(restaurant_params) ? ( redirect_to @restaurant ) : ( render 'edit' )
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def restaurant_params
    params.permit(:title, :address, :description, :food_type)
  end
end
