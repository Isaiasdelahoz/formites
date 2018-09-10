require 'game'

class GamesController < ApplicationController
  before_action :load_game, only: [:attack_p1, :attack_p2]

  def index
    @users = User.all
  end

  def new 
  end

  def create
    session[:nickname1] = params[:nickname1]
    session[:nickname2] = params[:nickname2]
    session[:life_p1] = 100
    session[:life_p2] = 100
    
    @user1 = User.find_or_initialize_by(nickname: session[:nickname1])
    @user1.score = @user1.score + 1
    @user1.save
    @user2 = User.find_or_initialize_by(nickname: session[:nickname2])
    @user2.score = @user2.score + 1
    @user2.save
    redirect_to play_games_path
  end

  def play
  end
  
  def attack_p1
    @game.hurt_p1
    session[:life_p1] = @game.life_p1
    session[:turn] = true 
    evaluate_game
    render :play
  end

  def attack_p2
    @game.hurt_p2
    session[:life_p2] = @game.life_p2
    session[:turn] = false
    evaluate_game
    render :play
  end


  def give_up_p1
    session[:life_p1] = 0
    evaluate_game
    render :play
  end

  def give_up_p2
    session[:life_p2] = 0
    evaluate_game
    render :play
  end 

  def load_game
    @game = Game.new(session[:life_p1], session[:life_p2])
  end

  private

  def evaluate_game
    @winner = session[:nickname1] if session[:life_p2] <= 0
    @winner = session[:nickname2] if session[:life_p1] <= 0

    if @winner.present?
      user_winner = User.find_by_nickname(@winner)
      user_winner.score = user_winner.score + 2
      user_winner.save
      reset_session
    end
  end
end
