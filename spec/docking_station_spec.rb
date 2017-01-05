require 'docking_station'
require 'bike'

describe DockingStation do

 it { is_expected.to respond_to :release_bike }

 it "release working bike" do
   bike = subject.release_bike
   expect(bike).to be_working
 end

 it { is_expected.to respond_to(:dock).with(1).argument}
 # it "dock bike" do
 #   bike = Bike.new
 #   expect(subject.dock(bike)).to eq bike
 # end

 it 'returns a docked bike' do
   bike = Bike.new
   subject.dock(bike)
   expect(subject.bike).to eq bike
 end

 it 'raises an error if no bikes available' do
   expect { subject.release_bike }.to raise_error(RuntimeError, 'No bikes available!')
 end

end
