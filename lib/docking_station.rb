require_relative 'bike'

class DockingStation

	attr_reader :bike
	DEFAULT_CAPACITY = 20

	def initialize(capacity=20)
		@bikes = []

	end

	def release_bike
		fail 'No bikes available!' if empty?
		@bikes.pop
	end

	def dock(bike)
		fail 'Station is full!' if full?
		@bikes << bike

	end

private

	def full?
		@bikes.length >= DEFAULT_CAPACITY

	end

	def empty?
		@bikes.empty?

	end

end
