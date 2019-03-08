require 'docking_station'

describe DockingStation do
  	it { is_expected.to respond_to(:release_bike) }


	# it 'releases a working bike' do
	# # 	bike = Bike.new
	# # expect(subject.release_bike) == bike
	# # expect(bike.working?).to eq true
 #    # expect(bike).to be_working
	# end

 #the test above was removed and the nested 'describe '#release bike'' test was added.
 # we assumed the docking station starts empty (without any bikes).



	it 'docks a bike at docking station, ' do
		expect(subject).to respond_to(:docking).with(1).argument
	end

	it 'responds to bike' do
		is_expected.to respond_to(:docked)
	end

	it 'docks something' do
		bike= Bike.new
		expect(subject.docking(bike)).to eq [bike]
	end

	it 'returns docked bikes' do
		bike = Bike.new
		subject.docking(bike)
		expect(subject.docked).to eq [bike]
	end


	describe '#release_bike' do
		it 'raises an error when docking station empty' do
			# subject.bike = nil
			expect { subject.release_bike }.to raise_error("No available bikes")
		end
    it 'returns true if docking station is empty' do
      expect(subject.docked).to eq []
    end
	end

	describe '#docking' do
		it 'raises an error when docking station is full(1 bike)' do
			subject.capacity.times { subject.docking Bike.new }
      #<< 20.times { subject.docking(Bike.new) }
			expect { subject.docking(Bike.new) }.to raise_error("Docking station full")
		end
    it 'returns true when dock is full (more than 20)' do
      subject.capacity.times { subject.docking Bike.new }
      expect(subject.docked.length).to eq DockingStation::DEFAULT_CAPACITY
    end
	end

  it 'gives a default capacity of 20 when no argument given' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end


end
