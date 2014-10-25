class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :address
      t.references :doi, index: true

      t.timestamps
    end
  end
end
