class CommentsController < ApplicationController
  # remember to delete any non functional code when you move to production
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

private

  def board_params
    params.require(:comment).permit(:body)
  end
end
