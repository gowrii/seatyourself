class RestaurantsController < ApplicationController
  
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])

    if current_user
      @reservation = @restaurant.reservations.build
    end
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    
    if @restaurant.save
      redirect_to restaurants_path(@restaurant)
    else
    render :new
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update_attributes(restaurant_params)
      redirect_to restaurants_path(@restaurant), notice: "Restaurant has been updated"
    else
      render :edit
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path

  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :street_address, :city, :province, :postal_code, :neighborhood, :cuisine, :price_range, :dining_style, :website, :email, :phone_no, :special_meals, :description, :capacity, :sat_open, :sat_close, :sun_open, :sun_close, :start_time, :end_time)
  end
end
