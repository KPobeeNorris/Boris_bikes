require './lib/docking_station_class.rb'

describe DockingStation do
  it 'DockingStation to respond_to release_bike method' do
    expect(release_bike).to eq true
  end

end
