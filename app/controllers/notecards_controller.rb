class NotecardsController < ApplicationController
  before_action :set_board, only: [:new, :create, :edit, :update, :destroy]
  
  def index
    @board = Board.find(params[:board_id])
    @notecards = @board.notecards.all
  end

  def show
    @board = Board.find(params[:board_id])

    @notecard =
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

# Strong Params
private

  def set_board
    @board = Board.find(params[:board_id])
  end

  def notecard_params
    params.require(:notecard).permit(:task, :date, :status, :accomplished, :to_do, :roadblock)
  end

end
