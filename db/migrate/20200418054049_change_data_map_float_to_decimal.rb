class ChangeDataMapFloatToDecimal < ActiveRecord::Migration[5.0]
  def change
    change_column :maps, :latitude, :decimal, precision: 10, scale: 10
    change_column :maps, :longitude, :decimal, precision: 10, scale: 10
  end
end
