require './lib/bike.rb'

describe Bike do
  it 'expect Bike to respond_to .working?' do
    bike = Bike.new
    expect(bike.working?).to eq true
  end

end
