class Restaurant < ActiveRecord::Base
	has_many :reservations
	has_many :users, :through => :reservations

	validates :capacity, :name, :street_address, :city, :province, :postal_code, :neighborhood, :cuisine, :dining_style, :website, :email, :phone_no, :description, :presence => true

	def availability? (reservation)
		people = 0
		self.reservations.all
		where(start_time: reservation.start_time.hour)
		.each {|r| people += r.seats}
		(people + reservation.seats) < capacity
	end
end
