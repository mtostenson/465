class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :score
      t.integer :user_id
      t.integer :level_id

      t.timestamps
    end
  end
end
