class GamesController < ApplicationController

  def index
    @games = Game.all
    render json: @games
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end

  def update
    @game = Game.find(params[:id])
    @game.update(state: params[:state])
    render :'home/index'
  end

  def create
    Game.create(state: ["X", "", "", "", "", "", "", "", ""])
    render :'home/index'
  end

end
