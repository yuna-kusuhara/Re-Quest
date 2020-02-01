class AddUserRefToRequests < ActiveRecord::Migration[5.0]
  def change
    add_reference :requests, :user, foreign_key: true, index: false, after: :map_url
  end
end
