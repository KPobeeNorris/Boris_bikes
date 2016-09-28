require './lib/bike.rb'

class DockingStation
  attr_reader :bikes
	DEFAULT_CAPACITY = 20

  def initialize
		@bikes = []
	end

	def release_bike
    unless empty?
      Bike.new
    else
      raise "There are no bikes"
    end
	end

	def dock_bike(bike)
		unless full?
			@bikes << bike
		else
			raise "Too many bikes!"
		end
	end

private

  def full?
    @bikes.length == DEFAULT_CAPACITY
  end

  def empty?
    @bikes.length == 0
  end

end
