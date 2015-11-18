class NotecardsController < ApplicationController
  before_action :set_board, except: [:all, :destroy]

  def all
    @notecards = Notecard.all
  end

  def index
    @notecards = @board.notecards.all
  end

  def show
    @notecard = @board.notecards.find(params[:id])
  end

  def new
    @notecard = Notecard.new
  end

  def create
    Rails.logger.debug("Id: #{params[:id]}")
    @notecard = @board.notecards.create!(notecard_params.merge(user:current_user))
    redirect_to board_notecards_path
  end

  def edit
    Rails.logger.debug("Id: #{params[:id]}")
    @notecard = Notecard.find(params[:id])
    # @board = @notecard.board
  end

  def update
    @notecard = Notecard.find(params[:id])
    # @board = @notecard.board
    @notecard.update(notecard_params)
    redirect_to board_notecards_path
  end

  def destroy
    @notecard = current_user.notecards.find(params[:id])
    @notecard.destroy
    redirect_to board_notecards_path
  end

private
  def set_board
    @board = Board.find(params[:board_id])
  end

  def notecard_params
    params.require(:notecard).permit(:task, :date, :status, :accomplished, :to_do, :roadblock, :user_id, :board_id)
  end
end
