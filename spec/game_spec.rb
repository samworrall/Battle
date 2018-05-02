require 'game'

describe Game, :game do
  let(:subject) { described_class.new(player1, player2) }
  let(:player1) { spy :player1 }
  let(:player2) { double :player2 }

  describe '#attack' do
    it 'Creates an attack on player 2' do
      subject.attack(player1)
      expect(subject.player1).to have_received(:hurt)
    end
  end
end
