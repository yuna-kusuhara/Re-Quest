class AddUserIdToRequestUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :request_users, :user_id, :integer, null: false, after: :request_id
  end
end
