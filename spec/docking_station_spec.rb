# In spec/docking_station_spec.rb

require "docking_station"
# Within the DockingStation object
describe DockingStation do
  # Capacity can be set upon initialization
  describe 'initialization' do
    it 'has a variable capacity' do
      docking_station = DockingStation.new(50)
      50.times { docking_station.dock(double(:bike)) }
      expect { docking_station.dock(double(:bike)) }.to raise_error 'Docking station full'
    end
  end
  # Capcity has a default value 
  describe 'initialization' do
    subject { DockingStation.new }
    let(:bike) { Bike.new }
    it 'has a default capacity' do
      described_class::DEFAULT_CAPACITY.times do
        subject.dock(double(:bike))
      end
      expect { subject.dock(double(:bike)) }.to raise_error 'Docking station full'
    end
  end
  # Within the release bike method
	describe 'release_bike' do
  	# Raises error when there are no bikes docked
		it 'raises an error when there are no bikes available' do
		  expect { subject.release_bike }.to raise_error 'No bikes available'
    end
    # Raises error when the only bike left is broken
    it 'raises an error when bike is broken' do
      # Method stub
      bike = double(:bike, broken?: true)
      subject.dock(bike)
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
	end
	# Within the dock(bike) method
	describe 'dock' do
		it 'raises an error when dock is full' do
      subject.capacity.times { subject.dock(double(:bike)) }
			expect { subject.dock(double(:bike)) }.to raise_error 'Docking station full'
		end
	end
end
