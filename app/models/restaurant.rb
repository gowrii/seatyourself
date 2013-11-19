class Restaurant < ActiveRecord::Base
	has_many :reservations
	has_many :users, :through => :reservations

	validates :name, :name, :street_address, :city, :province, :postal_code, :neighborhood, :cuisine, :dining_style, :website, :email, :phone_no, :description, :presence => true
end
