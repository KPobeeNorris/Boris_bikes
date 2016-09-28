require './lib/docking_station.rb'
require './lib/bike.rb'

describe DockingStation do
  describe 'process to release bike' do
    it 'DockingStation to return new instance of Bike class' do
      docking_station = DockingStation.new
      docking_station.dock_bike(Bike.new)
      bike = docking_station.release_bike
      expect(bike.class).to eq Bike
    end
    it 'raises an error if there are no bikes' do
      docking_station = DockingStation.new
      expect {docking_station.release_bike}.to raise_error "There are no bikes"
    end
  end

  describe 'process of accepting bikes' do
    it 'DockingStation doesn\'t accept new bike if docking station is full' do
      docking_station = DockingStation.new
      DockingStation::DEFAULT_CAPACITY.times {docking_station.dock_bike(Bike.new)}
      expect {docking_station.dock_bike(Bike.new)}.to raise_error "Too many bikes!"
    end
  end

  it 'DockingStation expects bike to be working?' do
    docking_station = DockingStation.new
    docking_station.dock_bike(Bike.new)
    bike = docking_station.release_bike
    expect(bike.working?).to eq true
  end

  it { is_expected.to respond_to :release_bike }


  it { is_expected.to respond_to :dock_bike }

  it 'can show number of bikes docked' do
    docking_station = DockingStation.new
    expect(docking_station.bikes.length).to eq 0
  end

  it 'can be initialized with a capacity' do
    docking_station = DockingStation.new(30)
    expect(docking_station.capacity).to eq 30
  end
  it 'has a default capacity equal to DEFAULT_CAPACITY' do
    docking_station = DockingStation.new
    expect(docking_station.capacity).to eq 20
  end
end

=begin

ORIGINAL CODE BELOW:

it 'DockingStation to respond_to release_bike method' do
  expect(release_bike).to eq true
end

=end
