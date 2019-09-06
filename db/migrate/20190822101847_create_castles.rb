class CreateCastles < ActiveRecord::Migration[5.2]
  def change
    create_table :castles do |t|
      t.string :name
      t.string :content, null: false
      t.integer :castle_area, null: false

      t.timestamps
    end
  end
end
