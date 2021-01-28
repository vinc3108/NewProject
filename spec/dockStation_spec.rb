require 'dockStation'
RSpec.describe DockingStation do
    describe "#release_bike" do
        it "responds to release bike" do
            expect(subject).to respond_to :release_bike
        end

        it 'releases working bikes' do
            bike = subject.release_bike
            expect(bike).to be_working
        end

        it 'raises an error when no bikes available' do
            docking_station = DockingStation.new(20, 0)
            expect {docking_station.release_bike}.to raise_error 'No bikes available'
        end
    end

    describe "working" do
        it "checks if released bike is working" do
            docking_station = DockingStation.new
            bike = docking_station.release_bike
            expect(bike.working?).to eq true
        end
    end

    describe "dock_bike" do
        it "returns docked bikes" do
            bike = Bike.new
            docking_station = DockingStation.new(20, 19)
            docking_station.dock(bike)
            expect(docking_station.current_bikes).to eq docking_station.capacity
        end

        it "acknowledges returned bikes" do
            bike = Bike.new
            docking_station = DockingStation.new(20, 19)
            expect(docking_station.dock(bike)).to eq "Bike docked successfully"
        end

        it "Does not allow bikes to be docked if station full" do
            bike = Bike.new
            docking_station = DockingStation.new
            expect {docking_station.dock(bike)}.to raise_error 'Docking station full'
        end
    end

    describe '#initialize' do
        it 'lets the user set the capacity' do
            docking_station = DockingStation.new(30)
            expect(docking_station.capacity).to eq 30
        end

        it 'ensures that the starting quantity of bikes cannot exceed capacity' do
            expect {docking_station = DockingStation.new(10, 20)}.to raise_error 'You cannot put more bikes in than the capacity'
        end
    end
end