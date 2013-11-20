module ApplicationHelper
	def availability?(reservation)
		people = 0
		Restaurant.reservations.all.
		where(start_time: reservation.start_time)
		.each {|r| people += r.seats}
		(people + reservation.seats) < capacity
	end
end
