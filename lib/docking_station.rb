# in lib/docking_station.rb

class DockingStation

  DEFAULT_CAPACITY = 20
  attr_reader  :bikes
  attr_accessor :capacity
  # Initialize array and capacity
  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end
  # Method to release bike when bikes are available
  def release_bike
    fail 'No bikes available' if empty?

    fail 'No bikes available' if broken?
    bikes.pop
  end
  # Method to dock bike if dock doesn't already contain a bike
  def dock(bike)
    fail 'Docking station full' if full?
    bikes << bike
  end
  # Two methods to describe docking station capacity
  def full?
    bikes.count >= capacity
  end

  def empty?
    bikes.empty?
  end

  def broken?
    true
  end
end
