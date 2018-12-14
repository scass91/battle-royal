require "sinatra/base"

class Battle < Sinatra::Base

  enable :sessions

  get "/" do
    "Enter player names"
    erb(:index)
  end

  post "/names" do
    session[:Player_1] = params[:Player_1]
    session[:Player_2] = params[:Player_2]
    redirect '/play'
  end

  get "/play" do
    @Player_1 = session[:Player_1]
    @Player_2 = session[:Player_2]
    erb(:play)
  end

  get "/arena" do
    @Player_1 = session[:Player_1]
    @Player_2 = session[:Player_2]
    erb(:arena)
  end

  get "/fight" do
    @Player_1 = session[:Player_1]
    @Player_2 = session[:Player_2]
    erb(:fight)
  end


  run! if app_file == $0

end
