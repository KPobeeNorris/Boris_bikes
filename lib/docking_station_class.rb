require './lib/bike.rb'

class DockingStation
  attr_reader :bikes
  def initialize
		@bikes = []
	end

	def release_bike
    if @bikes.length > 0
      Bike.new
    else
      raise "There are no bikes"
    end
	end

	def dock_bike(bike)
		if @bikes.length < 20
			@bikes << bike
		else
			raise "Too many bikes!"
		end
	end



end
