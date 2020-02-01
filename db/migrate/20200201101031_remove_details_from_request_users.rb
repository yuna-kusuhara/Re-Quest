class RemoveDetailsFromRequestUsers < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :request_users, column: :user_id
    remove_column :request_users, :user_id, :integer
  end
end
