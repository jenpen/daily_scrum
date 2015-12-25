class CommentsController < ApplicationController
before_action :set_notecard, only: [:create, :destroy]

  def create
    @comment = @notecard.comments.create!(comment_params.merge(user:current_user))
    redirect_to board_notecard_path(@notecard)
  end

  def destroy
    @comment = current_user.comment.find(params[:id])
    @comment.destroy
    redirecto_to board_notecard_path(@notecard)
  end

private
  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end
