require 'docking_station'

describe Dockingstation do
  
  it { is_expected.to respond_to :release_bike }

  it {is_expected.to respond_to(:dock).with(1).argument}


end
