class NotecardsController < ApplicationController

  def index
    @notecards = Notecard.all
  end

  def show
  end

  def create
  end

  def edit
  end

  def destroy
  end

private
  def notecard_params
  end

end
