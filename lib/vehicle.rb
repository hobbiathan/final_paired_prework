class Vehicle

  attr_reader :year, :make, :model, :passengers, :is_speeding

  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @passengers = []
    @is_speeding = false
  end

  def speeding?
    @is_speeding
  end

  def speed
    if @is_speeding == false
      @is_speeding = true
    end
  end

  def add_passenger(passenger_obj)
    @passengers << passenger_obj
  end

  def num_adults
    total = @passengers.select do |passenger|
      passenger.age >= 18
    end

    total.size
  end
end
