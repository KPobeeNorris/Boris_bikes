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

	def dock_bike
		@bikes += 1
	end

end
