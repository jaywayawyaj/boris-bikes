class Dockingstation

  attr_reader :bike

  def release_bike
    raise "I'm an exception"
    Bike.new
  end

  def dock(bike)
    @bike = bike
  end

  # def empty?
  #
  # end

end
