require 'dockStation'
RSpec.describe DockingStation do
    describe "#release_bike" do
        it "releases bike" do
            expect(DockingStation.release_bike).to eq true
        end
    end
end