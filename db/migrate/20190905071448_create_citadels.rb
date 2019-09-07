class CreateCitadels < ActiveRecord::Migration[5.2]
  def change
    create_table :citadels do |t|
      t.string    :name, null: false
      t.string    :address, null: false
      t.string    :time, null: false
      t.string    :gazou, null: false
      t.string     :image, null: false
      t.text      :text, null: false
      t.text      :detail, null: false
      t.text      :map, null: false


      t.timestamps
    end
  end
end
