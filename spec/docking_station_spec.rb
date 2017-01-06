require 'docking_station'
require 'bike'

describe DockingStation do
  bike = Bike.new
  describe '#release_bike' do
    it { is_expected.to respond_to :release_bike }

    it 'releases a docked bike' do
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error if no bikes available' do
      expect { subject.release_bike }.to raise_error(RuntimeError, 'No bikes available!')
    end
  end

  describe '#working?' do
    it "checks the bike is working" do
      expect(bike).to be_working
    end
  end

  describe '#dock' do
    it { is_expected.to respond_to(:dock).with(1).argument}

    it 'docks the given bike' do
      expect(subject.dock(bike)).to include bike
    end
  end

  context "Tests for default capacity" do
    it 'raises an error if default bike capacity is full' do
      (DockingStation::DEFAULT_CAPACITY).times {subject.dock(bike)}
      expect { subject.dock(bike) }.to raise_error(RuntimeError, 'Station is full!')
    end

  end

  context "Tests for specified capacity" do
    it 'Docking station can be created with a specified capacity' do
      expect(DockingStation.new(50)).not_to raise_error
    end
  end
end
