class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])

    respond_to do |format|
      format.html { render @user }
      format.js {}
      format.json { render json: @user, status: '200' }
    end
  end
end