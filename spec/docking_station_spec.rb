require "docking_station"

describe DockingStation do
  # should respond to release_bike
'''
  it "should return a bike when release_bike" do
    station = DockingStation.new #turns into object 
    expect(station.release_bike).to be_a(Bike)
  end
'''
  it "should store a bike when dock is called" do
    station = DockingStation.new
    bike = Bike.new
    storage = [bike] # populates empty storage with bike objects
    expect(station.dock(bike)).to eq(storage)
  end

  it "check if a bike has been stored" do
    station = DockingStation.new
    bike = Bike.new
    station.dock(bike)
    #storage = [bike] # populates empty storage with bike objects
    expect(station.docked?).to eq(false)
  end

  it "should return an error if you try to release a bike from an empty station" do
    station = DockingStation.new
    expect{station.release_bike}.to raise_error("No bikes in storage")
  end

  it "when you try to add a bike to the storage when it has maximum in it returns an error" do
    station = DockingStation.new
    station.capacity.times { station.dock(Bike.new) }
    expect { station.dock(Bike.new) }.to raise_error('Bike storage is full')
  end
  it "when you try to add a bike to the storage when it has maximum with a different capacity in it returns an error" do
    station = DockingStation.new(50)
    station.capacity.times { station.dock(Bike.new) }
    expect { station.dock(Bike.new) }.to raise_error('Bike storage is full')
  end
end