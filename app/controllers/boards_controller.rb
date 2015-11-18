class BoardsController < ApplicationController
  before_action :set_board, only: [:edit, :update, :destroy]

  def index
    @boards = Board.all
  end

  def show
    render 'notecards/index'
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.create!(board_params)
    redirect_to @board
  end

  def edit
  end

  def update
    @board.update!(board_params)
    redirect_to @board
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
