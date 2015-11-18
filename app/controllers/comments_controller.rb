class CommentsController < ApplicationController

  def create
  end

  def update
  end

  def destroy
  end

private
def set_board
  @notecard = Notecard.find(params[:id])
end

def board_params
  params.require(:comment).permit(:body)
end

end
