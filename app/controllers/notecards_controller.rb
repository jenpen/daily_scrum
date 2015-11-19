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
    if @notecard = @board.notecards.create!(notecard_params.merge(user:current_user))
      flash[:notice] = "#{@notecard.task} was successfully created!"
      redirect_to board_notecards_path(@board)
    else
      flash[:alert] = "#{@notecard.task} was not created."
      render :new
    end

  end

  def edit
    Rails.logger.debug("Id: #{params[:id]}")
    @notecard = Notecard.find(params[:id])
  end

  def update
    @notecard = Notecard.find(params[:id])
    if @notecard.update(notecard_params)
      flash[:notice] = "#{@notecard.task} was successfully updated!"
      redirect_to board_notecards_path
    else
      flash[:alert] = "#{@notecard.task} was not updated."
      render :edit
    end
  end

  def destroy
    @notecard = current_user.notecards.find(params[:id])
    if @notecard.destroy
      flash[:notice] = "#{@notecard.task} was removed."
      redirect_to board_notecards_path
    else
      flash[:alert] = "#{@notecard.task} was not removed."
      redirect_to board_notecards_path
    end
  end

private
  def set_board
    @board = Board.find(params[:board_id])
  end

  def notecard_params
    params.require(:notecard).permit(:task, :date, :status, :accomplished, :to_do, :roadblock, :user_id, :board_id)
  end
end
