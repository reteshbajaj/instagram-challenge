class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :name
      t.string :comment
      t.integer :like

      t.timestamps null: false
    end
  end
end
