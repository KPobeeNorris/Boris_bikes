require './lib/docking_station_class.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  #refactored to single line syntax

end


=begin

ORIGINAL CODE BELOW:

it 'DockingStation to respond_to release_bike method' do
  expect(release_bike).to eq true
end

=end
