# in lib/docking_station.rb
require_relative "bike"
class DockingStation
  attr_reader :storage #reading

  def initialize
    @storage = [] # initialising empty inventory 
  end

  def release_bike
    fail "No bikes in storage" if @storage.empty?
    return @storage.pop()
  end

  def dock(bike)
    fail "Bike storage is full" if @storage.length >= 20
    @storage << bike
  end

  def docked?
    return @storage.empty?
  end
end