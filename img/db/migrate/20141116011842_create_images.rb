class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :filename
      t.boolean :priv
      t.references :user, index: true
      t.references :tag, index: true

      t.timestamps
    end
  end
end
