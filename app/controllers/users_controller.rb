class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		redirect_to restaurants_path
  	else 
  		render :new
  	end
  end

  def user_params
  	params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :address_line1, :address_line2, :postal_code, :city, :province, :telphone_no)
  end
end
