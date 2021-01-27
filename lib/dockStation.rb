class DockingStation
  attr_reader :bikes
  def initialize(bikes = [{1 => true}])
    @bikes = bikes
  end

  def release_bike
    if @bikes.empty?
      "No bikes available"
    else
      Bike.new
    end
  end

  def working?(id)
    @bikes[id]
  end

  def dock_bike
    "You have docked your bike"
  end
end

class Bike
  def initialize
    @working = true
  end

  def working?
    @working
  end

end


