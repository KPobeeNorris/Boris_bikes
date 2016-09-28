require './lib/docking_station_class.rb'
require './lib/bike.rb'

describe DockingStation do
  docking_station = DockingStation.new
  bike = docking_station.release_bike
  it 'DockingStation to return new instance of Bike class' do
    expect(bike.class).to eq Bike
  end

  it 'DockingStation expects bike to be working?' do
    expect(bike.working?).to eq true
  end

  it { is_expected.to respond_to :release_bike }

  it { is_expected.to respond_to :dock_bike }

  it 'can show number of bikes docked' do
    expect(docking_station.bikes).to eq 0
  end

  describe '#dock_bike' do
    it 'increases @bikes by 1' do
      docking_station.dock_bike
      expect(docking_station.bikes).to eq 1
    end
  end

end


=begin

ORIGINAL CODE BELOW:

it 'DockingStation to respond_to release_bike method' do
  expect(release_bike).to eq true
end

=end
