class BoardsController < ApplicationController
  before_action :set_board, except: [:index, :new, :create]

  def index
    @boards = Board.all
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.create!(board_params)
    redirect_to board_notecards_path(@board)
  end

  def edit
  end

  def update
    @board.update!(board_params)
    redirect_to board_notecards_path(@board)
  end

  def destroy
    @board.destroy
    redirect_to boards_path
  end

private
  def set_board
    @board = Board.find(params[:id])
  end

  def board_params
    params.require(:board).permit(:title, :status)
  end

end
