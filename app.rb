require 'sinatra/base'
require './lib/player'
require './lib/game'

class UBM < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player1]), Player.new(params[:player2]))
    redirect '/play'
  end

  get '/play' do
    @attack_message = session[:attack_message]
    erb :play
  end

  post '/p1attack' do
    attack($game.player2)
    redirect '/play'
  end

  post '/p2attack' do
    attack($game.player1)
    redirect '/play'
  end

  def attack(player)
    $game.attack(player)
    session[:attack_message] = "POW! #{player.name} has been slapped!"
  end

end
