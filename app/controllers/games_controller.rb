class GamesController < ApplicationController
  def index
    @games = Game.all
    render json: @games
  end


  def new
    @game = Game.new
  end


  def create
    @game = Game.create(state: params[:state])
    render json: @game
  end


  def show
    @game = Game.find(params[:id])
    render json: @game
  end


  def edit
    @game = Game.find(params[:id])
  end


  def update
    @game = Game.find(params[:id])
    @game.update(game_params)
    render json: @game
  end


  private

  def game_params
    params.permit(state: [])
  end

end
