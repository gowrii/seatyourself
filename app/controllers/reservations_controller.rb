class ReservationsController < ApplicationController
  before_filter :load_restaurant
  
  
  def show
  	@reservations = Reservation.find[params[:id]]
  end

  def new
  	@reservation = Reservation.new
    @restaruant = Restaurant.find_by_id(params[:restaurant])
  end

  def create
  	@reservation = Reservation.new(reservation_params)
    @restaurant = Restaurant.find_by_id(params[:restaurant])
  		@reservation.user_id = current_user.id
  		if @reservation.availability?(@reservation) && @reservation.save 
  		redirect_to restaurants_path, notice: "Reservation created"
  	  else
  		  redirect_to :show
  	  end
  end

  def destroy
  	@reservation = Reservation.find(params[:id])
  	@reservation.destroy
  end

  def reservation_params
  	params.require(:reservation).permit(:reserve_time, :seats)
  end

  def load_restaurant
  	@restaurant = Restaurant.find_by_id(params[:restaurant])
  end


end
