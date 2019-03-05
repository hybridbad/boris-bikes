require './lib/docking_station'

describe DockingStation do
  it 'repsonds to the release_bike method' do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:release_bike)
  end
end

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
end