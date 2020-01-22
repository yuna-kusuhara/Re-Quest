class Request < ApplicationRecord
  has_many :request_users
  has_many :users, through: :request_users
end
