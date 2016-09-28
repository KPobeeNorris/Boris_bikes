require './lib/docking_station_class.rb'
require './lib/bike.rb'

describe DockingStation do
  describe 'process to release bike' do
    it 'DockingStation to return new instance of Bike class' do
      docking_station = DockingStation.new
      docking_station.dock_bike
      bike = docking_station.release_bike
      expect(bike.class).to eq Bike
    end
    it 'raises an error if there are no bikes' do
      docking_station = DockingStation.new
      expect {docking_station.release_bike}.to raise_error "There are no bikes"
    end
  end

  describe 'process of accepting bikes' do
    it 'DockingStation doesn\'t accept new bike if bike already docked' do
      docking_station = DockingStation.new
      docking_station.dock_bike
      expect {docking_station.dock_bike}.to raise_error "Too many bikes!"
    end
  end

  it 'DockingStation expects bike to be working?' do
    docking_station = DockingStation.new
    docking_station.dock_bike
    bike = docking_station.release_bike
    expect(bike.working?).to eq true
  end

  it { is_expected.to respond_to :release_bike }


  it { is_expected.to respond_to :dock_bike }

  it 'can show number of bikes docked' do
    docking_station = DockingStation.new
    expect(docking_station.bikes).to eq 0
  end

end

=begin

ORIGINAL CODE BELOW:

it 'DockingStation to respond_to release_bike method' do
  expect(release_bike).to eq true
end

=end
