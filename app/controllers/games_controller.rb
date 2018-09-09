class GamesController < ApplicationController
  def index
  end

  def new 
  end

  def create
    session[:nickname1] = params[:nickname1]
    session[:nickname2] = params[:nickname2]
    session[:score_1] = 0
    session[:score_2] = 0
    redirect_to games_play_path
  end

  def play
    session[:nickname1]
    session[:score_1]
  end 
end
