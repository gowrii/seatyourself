class Restaurant < ActiveRecord::Base
	has_many :reservations
	has_many :users, :through => :reservations

	validates :start_time, :capacity, :name, :street_address, :city, :province, :postal_code, :neighborhood, :cuisine, :dining_style, :website, :email, :phone_no, :description, :presence => true

	def availability? (reservation)
		people = 0
		people = self.reservations.
		where(reserve_time: reservation.reserve_time)
		.sum(:seats)
		(people + reservation.seats) < capacity
	end
end
