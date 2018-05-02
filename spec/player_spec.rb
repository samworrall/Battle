require 'player'

describe Player, :player do
  let(:subject) { Player.new(name) }
  let(:name) { 'Bob' }

  describe '#player' do
    it 'Returns the player name' do
    expect(subject.name).to eq 'Bob'
    end
  end
end
