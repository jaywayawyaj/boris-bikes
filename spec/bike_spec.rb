require 'bike'

describe Bike do

  let (:bike) {Bike.new}

  it { is_expected.to respond_to :working? }

  it { expect(bike.working?).to eq true }

  describe "#report" do
    it "responds to #report" do
      expect(bike).to respond_to(:report)
    end
  end
end
