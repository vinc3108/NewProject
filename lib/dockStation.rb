class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bike, :current_bikes, :capacity
  def initialize(capacity = DEFAULT_CAPACITY, current_bikes = DEFAULT_CAPACITY)
    if @current_bikes > @capacity
      fail 'You cannot put more bikes in than the capacity'
    end
    @capacity = capacity
    @current_bikes = current_bikes
  end

  def release_bike
    if empty?
      fail 'No bikes available' 
    else
      @current_bikes > 0
      @current_bikes -= 1
      Bike.new
    end
  end

  def dock(bike)
    if full?
      fail 'Docking station full'
    else
      @current_bikes += 1
      'Bike docked successfully'
    end
  end
private
  def full?
    @current_bikes == DEFAULT_CAPACITY ? true : false
  end

  def empty?
    @current_bikes == 0 ? true : false
  end
end

class Bike
  def working?
    true
  end
end


