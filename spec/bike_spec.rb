require './lib/bike.rb'

describe Bike do
  it { is_expected.to respond_to :working?}


end

=begin

ORIGINAL CODE BELOW:

it 'expect Bike to respond_to .working?' do
  bike = Bike.new
  expect(bike.working?).to eq true

=end
