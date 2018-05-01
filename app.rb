require 'sinatra/base'

class UBM < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb(:play)
  end
end
