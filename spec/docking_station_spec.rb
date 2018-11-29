require 'docking_station'

describe Dockingstation do

  it { is_expected.to respond_to :release_bike }

  # check step 11
  # it 'gets a bike and check if working' do
  #   bike = Dockingtation.new.release_bike
  #   expect(bike.working?).to eq true
  # end

  it {is_expected.to respond_to(:dock).with(1).argument}

  it "raises an error when no bikes are available" do
    expect { Dockingstation.new.release_bike }.to raise_error(RuntimeError)
  end

  it "raises an error when docking station is full" do
    expect { Dockingstation.new.dock(Bike.new) }.to raise_error(RuntimeError)
  end

end
