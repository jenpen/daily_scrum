class NotecardsController < ApplicationController
  before_action :set_board, except: [:all, :new, :edit, :update]
  # before_action :set_notecard, only: [:edit, :update]


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
    @notecard = @board.notecards.create!(notecard_params.merge(user:current_user))
    redirect_to @board
  end

  def edit
    @notecard = Notecard.find(params[:id])
    # @board = @notecard.board
  end

  def update
    @notecard = Notecard.find(params[:id])
    # @board = @notecard.board
    if @notecard.update(notecard_params)
      flash[:notice] = "#{@notecard.title} was successfully updated!"
      redirect_to @notecard
    else
      render :edit
    end
  end

  def destroy
    @notecard = current_user.notecards.find(params[:id])
    @notecard.destroy
    redirect_to @board
  end

private

  # def set_notecard
  #   @notecard = Notecard.find(params[:id])
  # end

  def set_board
    @board = Board.find(params[:board_id])
  end

  def notecard_params
    params.require(:notecard).permit(:task, :date, :status, :accomplished, :to_do, :roadblock, :board_id, :user_id)
  end
end
