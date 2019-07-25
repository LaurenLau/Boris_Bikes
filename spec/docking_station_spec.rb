# In spec/docking_station_spec.rb

require "docking_station"
# Within the DockingStation object
describe DockingStation do
# Specifies details of the DockingStation object interface
  it { is_expected.to respond_to(:release_bike)}
  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to(:bike) }
# Within the Bike object
	describe '#release_bike' do
		# Raises error when there are no bikes docked
		it 'raises an error when there are no bikes available' do
		  expect { subject.release_bike }.to raise_error 'No bikes available'
		end
	end  
end