require './lib/bike.rb'

class DockingStation
	DEFAULT_CAPACITY = 20
	attr_reader :capacity, :docked

	def initialize(capacity = DEFAULT_CAPACITY)
		@docked = []
		@capacity = capacity
	end

  	def release_bike
  	# if @bike != nil
	fail 'No available bikes' if empty?
	docked.pop
	#releases the first bike
  	end

  def docking(bike)
    fail 'Docking station full' if full?
  	docked << bike
		# return bike
  end

  private

	def full?
		docked.count >= capacity
	end

	def empty?
		docked.empty?
	end

end
