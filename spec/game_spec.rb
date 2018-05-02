require 'game'

describe Game, :game do
  let(:game) { described_class.new(player1, player2) }
  let(:player1) { spy :player1 }
  let(:player2) { spy :player2 }

  it 'Accepts two arguemnts upon instantiation' do
    expect(game.player1).to eq(player1)
    expect(game.player2).to eq(player2)
  end

  it 'Defines current player upon instantiation' do
    expect(game.current_player).to be(player1)
  end

  it 'Defines other player upon instantiation' do
    expect(game.other_player).to be(player2)
  end

  describe '#attack' do
    it 'Creates an attack on player 2' do
      game.attack
      expect(game.player2).to have_received(:hurt)
    end
  end

  describe '#end_turn' do
    it 'Swaps value of current and other player' do
      game.attack
      expect(game.current_player).to be(player2)
    end
  end
end
