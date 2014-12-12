class CreateShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
      t.string :make
      t.string :model
      t.integer :user_id

      t.timestamps
    end
  end
end
