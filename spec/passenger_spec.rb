require './lib/passenger'

RSpec.describe Passenger do
  before(:each) do
    @passenger = Passenger.new({"name" => "Charlie", "age" => 18})
  end

  it 'is exists' do
    expect(@passenger).to be_instance_of(Passenger)
  end

  it 'can read passenger name' do
    expect(@passenger.name).to eq("Charlie")
  end

  it 'can read passenger age' do
    expect(@passenger.age).to eq(18)
  end

  it 'has a default driver state of false' do
    expect(@passenger.driver).to be false
  end

  it 'can change passenger to a driver using #drive' do
    @passenger.drive
    expect(@passenger.driver?).to be true
  end

  it 'can return if passenger is #adult?' do
    expect(@passenger.adult?).to be true
  end


end
