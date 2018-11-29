require 'docking_station'

describe Dockingstation do

  it "Docking station respods to #release_bike method" do
    expect(subject).to respond_to :release_bike
  end

  it "Docking station responds to #dock with 1 argument" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it "raises an error when no bikes are available" do
    expect { subject.release_bike }.to raise_error 'No bikes available'
  end

  describe '#dock' do
    it "raises an error when docking station is full" do
      20.times { subject.dock(Bike.new) }
      expect { subject.dock(Bike.new) }.to raise_error 'Docking Station is full'
    end
  end
end
