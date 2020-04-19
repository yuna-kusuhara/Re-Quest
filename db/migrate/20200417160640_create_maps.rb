class CreateMaps < ActiveRecord::Migration[5.0]
  def change
    create_table :maps do |t|
      t.string :title, null: false
      t.string :coment
      t.integer :latitude, null: false
      t.integer :longitude, null: false
      t.timestamps
    end
  end
end
