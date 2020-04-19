class ChangeDataMapToFloat2 < ActiveRecord::Migration[5.0]
  def change
    change_column :maps, :latitude, :decimal, precision: 15, scale: 10
    change_column :maps, :longitude, :decimal, precision: 15, scale: 10
  end
end
