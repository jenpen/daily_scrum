class AddBoardsToNotecard < ActiveRecord::Migration
  def change
    add_column :notecards, :board_id, :integer
  end
end
