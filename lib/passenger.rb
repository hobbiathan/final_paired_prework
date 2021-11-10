class Passenger
  attr_reader :age, :name, :driver

  def initialize(inputted_hash)
    @name = inputted_hash["name"]
    @age = inputted_hash["age"]
    @driver = false
  end

  def drive
    if @driver == false
      @driver = true
    end
  end

  def driver?
    @driver
  end

  def adult?
    if @age >= 18
      true
    else
      false
    end
  end

end
