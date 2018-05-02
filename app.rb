require 'sinatra/base'
require './lib/player'

class UBM < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @attack_message = session[:attack_message]
    erb :play
  end

  post '/attack' do
    session[:attack_message] = params[:attack_message]
    session[:attack_message] == "Player 1 has slapped Player 2!" ? $player2.hurt : $player1.hurt
    redirect '/play'
  end

end
