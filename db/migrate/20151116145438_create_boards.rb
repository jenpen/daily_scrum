class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :sprint_goal
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
