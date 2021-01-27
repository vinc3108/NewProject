require 'dockStation'
RSpec.describe DockingStation do
    describe "#release_bike" do
        it "releases bike" do
            docking_station = DockingStation.new
            bike = docking_station.release_bike
            expect(bike).to be_an_instance_of(Bike)
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
        it "allows user to dock a bike" do
            docking_station = DockingStation.new
            bike = docking_station.release_bike
            expect(docking_station.dock_bike).to eq "You have docked your bike"
        end

        it "warns user that there are no bikes available if docking station empty" do
            docking_station = DockingStation.new([])
            expect(docking_station.release_bike).to eq "No bikes available"
        end
    end

    describe 'variable scope' do
        it 'has access via attr_reader' do
            docking_station = DockingStation.new
            expect(docking_station.bikes.length).to eq 1
        end
    end
end