require_relative 'config/environment'

class App < Sinatra::Base
  enable :sessions
  set :session_secret, "secret"

  get '/' do
    erb :index
  end

  get '/checkout' do
    session["item"] = params[:item] #takes params from the form and adds to session hash. 
    @session = session
    erb :checkout
  end
end
