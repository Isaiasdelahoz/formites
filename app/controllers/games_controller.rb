require 'game'

class GamesController < ApplicationController
  def index
  end

  def new 
  end

  def create
    session[:nickname1] = params[:nickname1]
    session[:nickname1] = params[:nickname2]

    redirect_to games_play_path
  end

  def play
    g1 = Game.new(session[:nickname1], session[:nickname2])
  end
  
  def attack
  end 
end
