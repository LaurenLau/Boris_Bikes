# in lib/docking_station.rb

class DockingStation 
  # Method that creates a new @bike object
  attr_reader :bike
    # Method to release bike when bikes are available
    def release_bike
      fail 'No bikes available' unless @bike 
      @bike
    end
    # Method to dock bike
    def dock(bike)
      @bike = bike
    end
end
