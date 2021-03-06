require './lib/passenger'
require './lib/vehicle'
require './lib/drive_in'

RSpec.describe DriveIn do

  before(:each) do
    @drive_in = DriveIn.new("Sundance")

    @vehicle = Vehicle.new("2001", "Honda", "Civic")
    @vehicle_two = Vehicle.new("2002", "Honda", "Something")
    @vehicle_three = Vehicle.new("1968", "Ford", "Mustang")

    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @jude = Passenger.new({"name" => "Jude", "age" => 20})

    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    @joey = Passenger.new({"name" => "Joey", "age" => 17})

    @jamie = Passenger.new({"name" => "Jamie", "age" => 18})

    @vehicle.add_passenger(@charlie)
    @vehicle.add_passenger(@joey)

    @vehicle_two.add_passenger(@jude)
    @vehicle_two.add_passenger(@taylor)

    @vehicle_three.add_passenger(@jamie)
  end

  it 'exists' do
    expect(@drive_in).to be_instance_of(DriveIn)
  end

  it 'has a name' do
    expect(@drive_in.name).to eq("Sundance")
  end

  it 'initializes empty vehicles_parked array' do
    expect(@drive_in.vehicles_parked).to eq([])
  end

  # Should've written this test first
  it 'can #park_vehicle in the vehicles_parked array' do
    @drive_in.park_vehicle(@vehicle)
    @drive_in.park_vehicle(@vehicle_two)
    @drive_in.park_vehicle(@vehicle_three)

    expected_array = [@vehicle, @vehicle_two, @vehicle_three]
    expect(@drive_in.vehicles_parked).to eq(expected_array)
  end

  it 'can find #vehicles_with_passengers' do
    @drive_in.park_vehicle(@vehicle)
    @drive_in.park_vehicle(@vehicle_two)
    @drive_in.park_vehicle(@vehicle_three)


    expect(@drive_in.vehicles_with_passengers).to eq([@vehicle, @vehicle_two])
  end

  it 'can list all #underage_passengers' do
    @drive_in.park_vehicle(@vehicle)
    @drive_in.park_vehicle(@vehicle_two)
    @drive_in.park_vehicle(@vehicle_three)

    expect(@drive_in.underage_passengers).to eq([@joey, @taylor])
  end
end
