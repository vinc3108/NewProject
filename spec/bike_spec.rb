require "dockStation"
RSpec.describe Bike do
  describe "#working?" do
    it "responds to working?" do
      expect(subject).to respond_to :working?
    end
  end
end