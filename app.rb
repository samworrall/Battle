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

  post '/attack' do
    attack
    redirect '/play'
  end

  def attack
    session[:attack_message] = $game.attack
  end

end
