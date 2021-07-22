require "bike"
describe Bike do

  # it "responds true if bike is working" do
  #   bike = Bike.new
  #   expect(bike.working?).to be true #this interacts with the bike object, checks if its working
  # end
  it "can be reported broken" do
    subject.report_broken
    expect(subject).to be_broken
  end
end