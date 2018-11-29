require 'docking_station'

describe Dockingstation do

  it { is_expected.to respond_to :release_bike }

  it {is_expected.to respond_to(:dock).with(1).argument}

  #expect { raise }
  # expect { raise Dockingstation.new.release_bike }.to raise_error

  it "raises" do
    expect { Dockingstation.new.release_bike }.to raise_error
  end

end


  # it { expect(subject.empty?).to raise_error("Docking Station empty") }

  # it { expect(subject.empty?).to be_truthy }
