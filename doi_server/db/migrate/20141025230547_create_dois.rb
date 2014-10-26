class CreateDois < ActiveRecord::Migration
  def change
    create_table :dois do |t|
      t.string :name
      t.string :desc
      t.string :doi_num

      t.timestamps
    end
  end
end
