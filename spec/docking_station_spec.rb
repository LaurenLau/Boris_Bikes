require "docking_station"

describe DockingStation do
    it 'Responds to release_bike method' do
        expect(subject).to respond_to(:release_bike)
    end
end