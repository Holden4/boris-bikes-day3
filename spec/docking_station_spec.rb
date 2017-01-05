require 'docking_station'
require 'bike'

describe DockingStation do
  bike = Bike.new
  describe '#release_bike' do
    it { is_expected.to respond_to :release_bike }

    it 'returns a docked bike' do
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end

    it 'raises an error if no bikes available' do
      expect { subject.release_bike }.to raise_error(RuntimeError, 'No bikes available!')
    end
  end

  describe '#working?' do
    it "release working bike" do
      expect(bike).to be_working
    end
  end

  describe '#dock' do
    it { is_expected.to respond_to(:dock).with(1).argument}

    it 'docks the given bike' do
      expect(subject.dock(bike)).to eq bike
    end
  end

end
