require 'plane'

describe Plane do
  describe '#land' do
    it 'responds to land method with 1 argument (i.e. the destination airport)' do
    expect(subject).to respond_to(:land).with(1).argument
    end

    it 'lands plane at airport' do
    airport = Airport.new
    subject.land(airport)
    expect(subject.landed).to be true
    end
  end

  describe '#landed' do
    it 'responds to landed method' do
    expect(subject).to respond_to(:landed)
    end
  end

  describe '#is_where method' do
    it 'responds to is_where? method' do
    expect(subject).to respond_to(:is_where?)
    end

    it 'returns current location of plane when called on plane' do
    airport = Airport.new
    subject.land(airport)
    expect(subject.is_where?).to eq airport
    end

    # it 'updates location to current airport' do
    # expect(subject.location).to eq(:is_where?)
  end



  # describe 'initialization' do
  #   it 'has default status landed on creation' do
  #   expect(subject.landed).to be true
  #   end
  # end
  #
  # This functionality is parked for the time being until
  # better understanding of necessary initialization conditions
  # for each new plane
end