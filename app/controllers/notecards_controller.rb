class NotecardsController < ApplicationController
  before_action :set_board

  def index
    @notecards = @board.notecards.all
  end

  def show
    @notecard = @board.notecard.find(params[:id])
  end

  def new
    @notecard = Notecard.new
  end

  def create
    @notecard = @board.notecards.create!(notecard_params.merge(user:current_user))
    redirect_to @board
  end

  def edit
    # @notecard = current_user.notecards.find(params[:id])
    @notecard = current_user.notecards.find(params[:id])

  end

  def update
    @notecard = @board.notecards.update!(notecard_params.merge(user:current_user))
    redirect_to @board
  end

  def destroy
    @notecard = current_user.notecards.find(params[:id])
    @notecard.destroy
    redirect_to @board
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
