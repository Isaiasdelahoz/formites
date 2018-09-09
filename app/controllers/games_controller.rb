class GamesController < ApplicationController
  def index
    @user1 = 2
  end

  def new
  end

  def create
    @name = session[:nickname1] = params[:nickname1]
    session[:nickname2] = params[:nickname2]
    session[:points_1] = 0
    session[:points_2] = 0
    redirect_to games_play_path
  end

  def show
    @name
  end


  def play 
    @user1
  end 
end
