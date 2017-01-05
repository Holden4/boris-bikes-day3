require 'docking_station'

describe DockingStation do 

 it { should respond_to :release_bike }

 it 'Gets a bike' do 
 	docking_station.release_bike should be_a(Bike)
 end

 it { should respond_to (working?) }
 it release_bike is_bike
 should respond_to(working?)
end

