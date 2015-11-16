class CreateNotecards < ActiveRecord::Migration
  def change
    create_table :notecards do |t|
      t.string :task
      t.date :date
      t.string :status
      t.string :accomplished
      t.string :to_do
      t.string :roadblock
      t.references :user, index: true, foreign_key: true

      t.timestamps :created_at, :updated_at
    end
  end
end
