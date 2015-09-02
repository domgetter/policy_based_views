class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.string :classification
      t.string :name
      t.string :logo

      t.timestamps null: false
    end
  end
end
