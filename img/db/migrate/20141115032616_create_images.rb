class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :filename
      t.boolean :pub
      t.string :user_id

      t.timestamps
    end
  end
end
