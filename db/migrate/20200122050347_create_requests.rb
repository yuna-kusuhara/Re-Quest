class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.string :title, null: false
      t.string :item, null: false
      t.integer :price, null: false
      t.string :location, null: false
      t.date :datelimit, null: false
      t.string :image
      t.string :map_url
      t.integer :create_user, null: false
      t.integer :status_flag, default: 0, null: false # 0:募集中,1:委託済,2:完了
      t.timestamps
    end
  end
end
