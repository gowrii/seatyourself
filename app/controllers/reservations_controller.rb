class ReservationsController < ApplicationController
  before_filter :load_restaurant
  
  def show
  	@reservations = Reservation.find[params[:id]]
  end

  def new
  	@reservation = Reservation.new
  end

  def create
  	@reservation = @restaurant.reservations.build(reservation_params)
  		@reservation.user_id = current_user.id
  		if @reservation.save
  		redirect_to restaurants_path, notice: "Reservation created"
  	  else
  		:action => :show
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
  	@restaurant = Restaurant.find(params[:restaurant_id])
  	
  end
end
