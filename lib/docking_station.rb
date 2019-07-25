# in lib/docking_station.rb

class DockingStation 
  # Initialize array
  def initialize
    @bike = []
  end
    # Method to release bike when bikes are available
    def release_bike
      fail 'No bikes available' if @bike.empty?
      @bike.pop
    end
    # Method to dock bike if dock doesn't already contain a bike
    def dock(bike)
      fail 'Docking station full' if @bike.count >= 20
      @bike << bike
    end
end
