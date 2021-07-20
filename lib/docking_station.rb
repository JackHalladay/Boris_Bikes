# in lib/docking_station.rb
require_relative "bike"
class DockingStation
  attr_reader :storage #reading

  def initialize
    @storage = [] # initialising empty inventory 
  end

  def release_bike
    bike = Bike.new
  end

  def dock(bike)
    @storage << bike
  end
end