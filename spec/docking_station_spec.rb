require './lib/docking_station.rb'

describe DockingStation do
  it 'repsonds to the release_bike method' do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:release_bike)
  end
end

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
end

describe DockingStation do
  it 'Gets a bike, and expects it to be working' do
    station = DockingStation.new
    bike = station.release_bike
    expect(bike).to respond_to(:working?)
  end
end
describe DockingStation do
  it 'Gets a bike, and expects it to be working' do
    station = DockingStation.new
    bike = station.release_bike
    expect(bike).to be_working
  end
end
