require_relative '../track'
require_relative '../car'
require_relative '../die'

describe 'Ruby Racer' do

  describe 'track' do
    let(:test_track){Track.new(30)}

    describe 'attributes' do
      it 'has a length' do
        expect(test_track.length).to eq(30)
      end
    end
  end

  describe 'car' do
    let(:test_car){Car.new}

    it 'has a position' do
      expect(test_car.position).to eq(0)
    end

    it 'is not a winner initially' do
      expect(test_car.winner).to be false
    end
  end

  describe 'die' do
    let(:test_die){Die.new(6)}

    it 'takes a number of sides' do
      expect(test_die.sides).to eq(6)
    end

    it 'generates a number between 1 and number of sides' do
      expect(test_die.roll).to be <= test_die.sides
    end
  end

  describe 'game' do
    let(:test_game){Game.new}
    it 'can tell if game is finished' do
      expect()
    end
  end
end

