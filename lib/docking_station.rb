# in lib/docking_station.rb

class DockingStation 
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
  # Methods to describe whether 
  def full?
    @bikes.count >= 20
  end
  def empty?
    @bikes.empty?
  end
end