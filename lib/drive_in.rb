class DriveIn

  attr_reader :name, :vehicles_parked

  def initialize(drive_in_name)
    @name = drive_in_name
    @vehicles_parked = []
  end

  def park_vehicle(vehicle_obj)
    @vehicles_parked << vehicle_obj
  end


  def vehicles_with_passengers

    vehicles_parked.select do |vehicle|
      vehicle.passengers.size > 1
    end

  end

  def underage_passengers

    @vehicles_parked.map do |vehicle|
      vehicle.passengers.select do |passenger|
        !passenger.adult? # fancy fancy 
      end
    end.flatten

  end


end
