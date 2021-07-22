# in lib/docking_station.rb
require_relative "bike"
class DockingStation
  attr_reader :storage #reading
  attr_reader :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @storage = [] # initialising empty inventory 
  end

  def release_bike
    fail "No bikes in storage" if self.empty?
    fail "Bike is broken" if @storage[-1].broken?
    return @storage.pop()
  end

  def dock(bike)
    fail "Bike storage is full" if self.full?
    @storage << bike
  end

  def docked?
    return @storage.empty?
  end

  private 

  def full?
    return @storage.count >=@capacity
  end

  def empty?
    return @storage.empty?
  end
end