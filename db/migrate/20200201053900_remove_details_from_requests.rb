class RemoveDetailsFromRequests < ActiveRecord::Migration[5.0]
  def change
    remove_column :requests, :create_user, :integer
    # remove_foreign_key :requests, column: :user_id
    # remove_column :requests, :user_id, :integer
  end
end
