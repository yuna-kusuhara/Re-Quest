class ChangeDataMapIntToFloat < ActiveRecord::Migration[5.0]
  def change
    change_column :maps, :latitude, :float
    change_column :maps, :longitude, :float
  end
end
