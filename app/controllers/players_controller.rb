class PlayersController < ApplicationController
  def index
  	@players = Player.all
  end

  def show
  	@player = PLayer.find_by(id: params[:id])
  end

  def create
  	@player = Player.new(player_params)
  	if @player.save
  		redirect_to root_path
  	end
  end

  def edit
  	@player = PLayer.find_by(id: params[:id])
  end

  def update
  	@player = Player.find_by(id: params[:id])
  	@player.update(player_params)
  	if @player.save
  	redirect_to	player_path(@player.id)
  end

  def delete
  	
  end

  private
  player_params.require(:player).permit(:nickname, :rank, :charisma, :wisdom)
  end
end
