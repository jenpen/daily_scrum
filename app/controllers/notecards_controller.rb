class NotecardsController < ApplicationController

  def all
    @notecards = Notecard.all
    @board = @notecards.find_by([board_id])
  end

  def index
    @board = Board.find(params[:board_id])
    @notecards = @board.notecards.all
  end

  def show
    @board = Board.find(params[:board_id])
    @notecard = @board.notecards.find(params[:id])
  end

  def new
    @notecard = Notecard.new
  end

  def create
    @board = Board.find(params[:board_id])
    @notecard = @board.notecards.create!(notecard_params.merge(user:current_user))
    redirect_to @board
  end

  def edit
    @notecard = current_user.notecards.find(params[:id])
  end

  def update
    @board = Board.find(params[:board_id])
    @notecard = current_user.notecards.update(@board, notecard_params)
    redirect_to @board
  end

  def destroy
    @board = Board.find(params[:board_id])
    @notecard = current_user.notecards.find(params[:id])
    @notecard.destroy
    redirect_to @board
  end

# Strong Params
private
  def set_board
  end

  def notecard_params
    params.require(:notecard).permit(:task, :date, :status, :accomplished, :to_do, :roadblock, :board_id, :user_id)
  end
end
