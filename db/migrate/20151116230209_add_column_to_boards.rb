class AddColumnToBoards < ActiveRecord::Migration
  def change
    # i'm happy to see that you used an additional migration rather than edit an existin migration. The latter is bad practice.
    add_column :boards, :status, :string
  end
end
