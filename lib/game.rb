class Game
  attr_reader :player1, :player2, :current_player, :other_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
    @other_player = player2
  end

  def attack
    @other_player.hurt
    end_turn
    "POW! #{current_player.name} has been slapped!"
  end

  private

  def end_turn
    @current_player, @other_player = @other_player, @current_player
  end

end
