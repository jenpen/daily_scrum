class CommentsController < ApplicationController

  def new
  end
  
  def create
  end

  def update
  end

  def destroy
  end

private

  def board_params
    params.require(:comment).permit(:body)
  end
end
