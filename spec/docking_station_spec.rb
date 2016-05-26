require 'docking_station'

describe DockingStation do
  describe "#release_bike" do

    it {is_expected.to respond_to :release_bike}

    it "releases a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it "raises an error when there are no bikes" do
      expect{subject.release_bike}.to raise_error "No bikes available"
    end

    it "releases working bikes" do
      subject.dock(Bike.new)
      bike = subject.release_bike
      expect(bike).to be_working
    end
  end


  it {is_expected.to respond_to(:bike)}

  it "references docked bikes" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
  end

  it "docks something" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  
end