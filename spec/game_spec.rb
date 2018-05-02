require 'game'

describe Game, :game do
  let(:game) { described_class.new(player1, player2) }
  let(:player1) { spy :player1 }
  let(:player2) { double :player2 }

  it 'Accepts two arguemnts upon instantiation' do
    expect(game.player1).to eq(player1)
    expect(game.player2).to eq(player2)
  end

  describe '#attack' do
    it 'Creates an attack on player 2' do
      game.attack(player1)
      expect(game.player1).to have_received(:hurt)
    end
  end
end
