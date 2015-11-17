class BoardsController < ApplicationController

  def index
    @boards = Board.all
  end

  def show
    @board = Board.find(params[:id])
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.create!(board_params.merge(user:current_user))
    redirect_to @board
  end

  def edit
    @board = Board.find(params[:id])
  end

  def update
    @board = Board.update!(board_params.merge(user:current_user))
    redirect_to @board
  end

  def destroy
    @board = current_user.boards.find(params[:id]).destroy
    redirect_to boards_path
  end

#Stong Params
private
  def board_params
    params.require(:board).permit(:title, :status)
  end

end
