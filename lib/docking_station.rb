require_relative 'bike'

class DockingStation

	attr_reader :bike

	def release_bike
		fail 'No bikes available!' unless self.bike
		self.bike
	end

	def dock(bike)
		fail 'Station is full!' if !bike
		@bike = bike
	end
end
