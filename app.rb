require 'sinatra/base'

class UBM < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
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
