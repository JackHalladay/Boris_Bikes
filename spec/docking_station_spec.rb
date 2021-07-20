require "docking_station"

describe DockingStation do
  # should respond to release_bike

  it "should return a bike when 'release_bike'" do
    station = DockingStation.new #turns into object 
    expect(station.release_bike).to be_a(Bike)
  end

  it "should store a bike when dock is called" do
    station = DockingStation.new
    bike = Bike.new
    storage = [bike] # populates empty storage with bike objects
    expect(station.dock(bike)).to eq(storage)
  end
end