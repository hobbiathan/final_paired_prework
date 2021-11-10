require './lib/passenger'
require './lib/vehicle'

RSpec.describe Vehicle do

  before(:each) do
    @vehicle = Vehicle.new("2001", "Honda", "Civic")
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @jude = Passenger.new({"name" => "Jude", "age" => 20})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
  end

  it 'exists' do
    expect(@vehicle).to be_instance_of(Vehicle)
  end

  it 'can read the year' do
    expect(@vehicle.year).to eq("2001")
  end

  it 'can read the make' do
    expect(@vehicle.make).to eq("Honda")
  end

  it 'can read the model' do
    expect(@vehicle.model).to eq("Civic")
  end

  it 'can initialize an empty passengers array' do
    expect(@vehicle.passengers).to eq([])
  end

  it 'has a default is_speeding state of false' do
    expect(@vehicle.is_speeding).to be false
  end

  it 'can return is_speeding state with #speeding?' do
    expect(@vehicle.speeding?).to be false
  end

  it 'can cause the vehicle to #speed' do
    @vehicle.speed
    expect(@vehicle.speeding?).to be true
  end

  it 'can #add_passenger to passengers array' do
    @vehicle.add_passenger(@charlie)
    @vehicle.add_passenger(@jude)
    @vehicle.add_passenger(@taylor)

    expected_array = [@charlie, @jude, @taylor]
    expect(@vehicle.passengers).to eq(expected_array)
  end

  it 'can return #num_adults in a given car' do
    @vehicle.add_passenger(@charlie)
    @vehicle.add_passenger(@jude)
    @vehicle.add_passenger(@taylor)

    expect(@vehicle.num_adults).to eq(2)
  end
end
