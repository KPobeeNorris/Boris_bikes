require './lib/bike.rb'

class DockingStation
  attr_reader :bikes
  def initialize
		@bikes = []
	end

	def release_bike
    if !empty?
      Bike.new
    else
      raise "There are no bikes"
    end
	end

	def dock_bike(bike)
		if !full?
			@bikes << bike
		else
			raise "Too many bikes!"
		end
	end

private

  def full?
    @bikes.length == 20
  end

  def empty?
    @bikes.length == 0
  end

end
