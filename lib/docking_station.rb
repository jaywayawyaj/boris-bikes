class Dockingstation

  attr_reader :bike 

  def initialize
    @capacity = Array.new
  end

  def release_bike
    fail "No bikes available" unless @capacity.length > 0 
    @capacity.pop
  end

  def dock(bike)
    fail 'Docking Station is full' if @capacity.count >= 20
    @capacity << bike
  end

end
