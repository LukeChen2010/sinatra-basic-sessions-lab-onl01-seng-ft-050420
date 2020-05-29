require_relative 'config/environment'

configure do
  enable :sessions
  set :session_secret, "secret"
end

class App < Sinatra::Base
  get '/' do
    @session = session
    erb :index
  end
  
  get 'checkout' do
    #@session << params.to_s
    @item = params[:item]
    
    erb :index
  end
end