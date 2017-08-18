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
    player1 = Player.new(params['player1'])
    player2 = Player.new(params['player2'])
    $game = Game.new(player1, player2)
    session[:display] = false
    redirect to('/play')
  end

  get '/play' do
    @display = session[:display]
    @reduction = session[:reduction]
    erb :play
  end

  post '/attack' do
    session[:reduction] = $game.attack
    session[:display] = true
    redirect to('/play')
  end

  run! if app_file == $PROGRAM_NAME
end
