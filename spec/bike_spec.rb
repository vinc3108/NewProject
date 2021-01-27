require "dockStation"
RSpec.describe Bike do
  describe "#working?" do
    it "returns if bike is working" do
      bike = Bike.new
      expect(bike.working?).to eq true
    end
  end
end