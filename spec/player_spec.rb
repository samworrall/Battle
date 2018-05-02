require 'player'

describe Player, :player do
  let(:subject) { described_class.new(name) }
  let(:name) { 'Bob' }

  describe '#name' do
    it 'Returns the player name' do
    expect(subject.name).to eq 'Bob'
    end
  end

  describe '#health' do
    it 'Returns the players health' do
      expect(subject.health).to eq 100
    end
  end

  describe '#hurt' do
    it 'reduces health' do
      expect { subject.hurt }.to change{subject.health}.by -described_class::HURT_POINTS
    end
  end
end
