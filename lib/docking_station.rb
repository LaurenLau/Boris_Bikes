# in lib/docking_station.rb

class DockingStation 
  # Constant for magic number
  DEFAULT_CAPACITY = 20
  # Initialize array
  def initialize
    @bikes = []
  end
  # Method to release bike when bikes are available
  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end
  # Method to dock bike if dock doesn't already contain a bike
  def dock(bike)
    fail 'Docking station full' if full?
    @bikes << bike
  end
  # Two methods to describe docking station capacity
  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end
  
end