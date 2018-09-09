require 'game'

class GamesController < ApplicationController
  before_action :load_game, only: [:attack_p1, :attack_p2]

  def index
  end

  def new 
  end

  def create
    session[:nickname1] = params[:nickname1]
    session[:nickname2] = params[:nickname2]
    session[:life_p1] = 100
    session[:life_p2] = 100
    redirect_to play_games_path
  end

  def play
  end
  
  def attack_p1
    @game.hurt_p1
    session[:life_p1] = @game.life_p1
    session[:turn] = true 
    redirect_to play_games_path
  end

  def attack_p2
    @game.hurt_p2
    session[:life_p2] = @game.life_p2
    session[:turn] = false
    redirect_to play_games_path
  end


  def give_up_p1
    session[:life_p1] = 0
    redirect_to play_games_path
  end

  def give_up_p2
    session[:life_p2] = 0
    redirect_to play_games_path
  end 

  def load_game
    @game = Game.new(session[:life_p1], session[:life_p2])
  end
end
