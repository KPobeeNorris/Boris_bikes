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


end


=begin

ORIGINAL CODE BELOW:

it 'DockingStation to respond_to release_bike method' do
  expect(release_bike).to eq true
end

=end
