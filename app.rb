require 'sinatra/base'

class UBM < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    @name = params[:name]
    erb(:play)
  end
end
