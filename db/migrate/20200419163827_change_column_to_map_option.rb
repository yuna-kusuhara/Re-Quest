class ChangeColumnToMapOption < ActiveRecord::Migration[5.0]
  def change
    change_column :maps, :latitude, :decimal, precision: 20, scale: 15
    change_column :maps, :longitude, :decimal, precision: 20, scale: 15
  end
end
