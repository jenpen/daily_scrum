class BoardsController < ApplicationController
  # :+1:
  before_action :set_board, except: [:index, :new, :create]

  def index
    @boards = Board.all
  end

  def new
    @board = Board.new
  end

  def create
    if @board = Board.create!(board_params)
      flash[:notice] = "#{@board.title} was successfully created!"
      redirect_to board_notecards_path(@board)
    else
      flash[:alert] = "#{@board.title} was not created."
      render :new
    end
  end


  def edit
  end

  def update
    if @board.update!(board_params)
      flash[:notice] = "#{@board.title} was successfully updated!"
      redirect_to board_notecards_path(@board)
    else
      flash[:alert] = "#{@board.title} was not updated."
      render :edit
    end
  end

  def destroy
    if @board.destroy
      flash[:notice] = "#{@board.title} was removed."
      redirect_to boards_path
    else
      flash[:alert] = "#{@board.title} was not removed."
      redirect_to board_notecards_path(@board)
    end
  end

  private
  def set_board
    @board = Board.find(params[:id])
  end

  def board_params
    params.require(:board).permit(:title, :status)
  end

end
