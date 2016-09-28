require './lib/bike.rb'

class DockingStation
  attr_reader :bikes
  def initialize
		@bikes = 0
	end

	def release_bike
    if @bikes > 0
      Bike.new
    else
      raise "There are no bikes"
    end
	end

	def dock_bike(bike)
		if @bikes < 20
			@bikes += 1
		else
			raise "Too many bikes!"
		end
	end



end
