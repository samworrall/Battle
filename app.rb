require 'sinatra/base'
require 'player'

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
    @p1_health = 100
    @p2_health = 100
    @attack_message = session[:attack_message]
    erb :play
  end

  post '/attack' do
    session[:attack_message] = params[:attack_message]
    redirect '/play'
  end

end
