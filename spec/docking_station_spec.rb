# In spec/docking_station_spec.rb

require "docking_station"
# Within the DockingStation object
describe DockingStation do
# Specifies details of the DockingStation object interface
  it { is_expected.to respond_to(:release_bike)}
  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to(:bike) }
# Within the release bike method
	describe '#release_bike' do
		# Raises error when there are no bikes docked
		it 'raises an error when there are no bikes available' do
		  expect { subject.release_bike }.to raise_error 'No bikes available'
		end
	end
	# Within the dock(bike) method
	describe '#dock' do
		it 'raises an error when dock is full' do
			bike = subject.dock(Bike.new)
			expect { subject.dock(bike)}.to raise_error 'Docking station is full'
		end
	end
end
