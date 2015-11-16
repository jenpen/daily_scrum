class AddColumnToBoards < ActiveRecord::Migration
  def change
    add_column :boards, :status, :string
  end
end
