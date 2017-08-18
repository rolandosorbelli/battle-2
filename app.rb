require 'sinatra'
require 'sinatra/base'
require 'shotgun'
require 'rack'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = params['player1']
    $player2 = params['player2']
    session[:display] = false
    redirect to('/play')
  end

  get '/play' do
    @display = session[:display]
    erb :play
  end

 post '/attack' do
    Game.attack
    session[:display] = true
    redirect to('/play')
  end

  run! if app_file == $0
end
