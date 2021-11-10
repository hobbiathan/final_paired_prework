require './lib/passenger'
require './lib/vehicle'
require './lib/drive_in'

RSpec.describe DriveIn do

  before(:each) do
    @drive_in = DriveIn.new("Sundance")
  end

  it 'exists' do
    expect(@drive_in).to be_instance_of(DriveIn)
  end

  it 'initializes empty vehicles_parked array' do
    expect(@drive_in.vehicles_parked).to eq([])
  end


end
